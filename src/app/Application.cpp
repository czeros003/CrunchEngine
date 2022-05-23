//
// Created by Wojtek on 26.04.2022.
//

#include "Application.h"
#include <IMGUI/imgui.h>
#include <string>

namespace CrunchApp
{
    void RenderUI()
    {
        MainWindow();
    }

    void MainWindow()
    {
        static bool opt_fullscreen = true;
        static bool opt_padding = false;
        static ImGuiDockNodeFlags dockspace_flags = ImGuiDockNodeFlags_None;

        // We are using the ImGuiWindowFlags_NoDocking flag to make the parent window not dockable into,
        // because it would be confusing to have two docking targets within each others.
        ImGuiWindowFlags window_flags = ImGuiWindowFlags_MenuBar | ImGuiWindowFlags_NoDocking;
        if (opt_fullscreen)
        {
            const ImGuiViewport* viewport = ImGui::GetMainViewport();
            ImGui::SetNextWindowPos(viewport->WorkPos);
            ImGui::SetNextWindowSize(viewport->WorkSize);
            ImGui::SetNextWindowViewport(viewport->ID);
            ImGui::PushStyleVar(ImGuiStyleVar_WindowRounding, 0.0f);
            ImGui::PushStyleVar(ImGuiStyleVar_WindowBorderSize, 0.0f);
            window_flags |= ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoCollapse | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove;
            window_flags |= ImGuiWindowFlags_NoBringToFrontOnFocus | ImGuiWindowFlags_NoNavFocus;
        }
        else
        {
            dockspace_flags &= ~ImGuiDockNodeFlags_PassthruCentralNode;
        }

        // When using ImGuiDockNodeFlags_PassthruCentralNode, DockSpace() will render our background
        // and handle the pass-thru hole, so we ask Begin() to not render a background.
        if (dockspace_flags & ImGuiDockNodeFlags_PassthruCentralNode)
            window_flags |= ImGuiWindowFlags_NoBackground;

        // Important: note that we proceed even if Begin() returns false (aka window is collapsed).
        // This is because we want to keep our DockSpace() active. If a DockSpace() is inactive,
        // all active windows docked into it will lose their parent and become undocked.
        // We cannot preserve the docking relationship between an active window and an inactive docking, otherwise
        // any change of dockspace/settings would lead to windows being stuck in limbo and never being visible.
        if (!opt_padding)
            ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, ImVec2(0.0f, 0.0f));
        ImGui::Begin("DockSpace Demo", nullptr, window_flags);
        if (!opt_padding)
            ImGui::PopStyleVar();

        if (opt_fullscreen)
            ImGui::PopStyleVar(2);

        // Submit the DockSpace
        ImGuiIO& io = ImGui::GetIO();
        if (io.ConfigFlags & ImGuiConfigFlags_DockingEnable)
        {
            ImGuiID dockspace_id = ImGui::GetID("MyDockSpace");
            ImGui::DockSpace(dockspace_id, ImVec2(0.0f, 0.0f), dockspace_flags);
        }


        if (ImGui::BeginMenuBar())
        {
            if (ImGui::BeginMenu("Options"))
            {
                // Disabling fullscreen would allow the window to be moved to the front of other windows,
                // which we can't undo at the moment without finer window depth/z control.
                ImGui::MenuItem("Fullscreen", NULL, &opt_fullscreen);
                ImGui::MenuItem("Padding", NULL, &opt_padding);
                ImGui::Separator();

                if (ImGui::MenuItem("Flag: NoSplit",                "", (dockspace_flags & ImGuiDockNodeFlags_NoSplit) != 0))                 { dockspace_flags ^= ImGuiDockNodeFlags_NoSplit; }
                if (ImGui::MenuItem("Flag: NoResize",               "", (dockspace_flags & ImGuiDockNodeFlags_NoResize) != 0))                { dockspace_flags ^= ImGuiDockNodeFlags_NoResize; }
                if (ImGui::MenuItem("Flag: NoDockingInCentralNode", "", (dockspace_flags & ImGuiDockNodeFlags_NoDockingInCentralNode) != 0))  { dockspace_flags ^= ImGuiDockNodeFlags_NoDockingInCentralNode; }
                if (ImGui::MenuItem("Flag: AutoHideTabBar",         "", (dockspace_flags & ImGuiDockNodeFlags_AutoHideTabBar) != 0))          { dockspace_flags ^= ImGuiDockNodeFlags_AutoHideTabBar; }
                if (ImGui::MenuItem("Flag: PassthruCentralNode",    "", (dockspace_flags & ImGuiDockNodeFlags_PassthruCentralNode) != 0, opt_fullscreen)) { dockspace_flags ^= ImGuiDockNodeFlags_PassthruCentralNode; }
                ImGui::Separator();
                ImGui::EndMenu();
            }

            ImGui::EndMenuBar();
        }

        ImGui::Begin("Settings");

        static int clicked = 0;
        if (ImGui::Button("Open Tool Window"))
        {
            clicked++;
        }

        ImGui::Button("Open renderer");

        static float col2[4] = { 0.03f, 0.15f, 0.19f, 0.5f };
        if (clicked & 1)
        {
            bool my_tool_active = true;
            ImGui::Begin("Tools", &my_tool_active, ImGuiWindowFlags_MenuBar);
            if (ImGui::BeginMenuBar())
            {
                if (ImGui::BeginMenu("File"))
                {
                    if (ImGui::MenuItem("Open..", "Ctrl+O")) { /* Do stuff */ }
                    if (ImGui::MenuItem("Save", "Ctrl+S"))   { /* Do stuff */ }
                    if (ImGui::MenuItem("Close", "Ctrl+W"))  { my_tool_active = false; }
                    ImGui::EndMenu();
                }
                ImGui::EndMenuBar();
            }

            // Edit a color (stored as ~4 floats)
            ImGui::ColorEdit4("Color", col2);

            // Plot some values
            const float my_values[] = { 0.2f, 0.1f, 1.0f, 0.5f, 0.9f, 2.2f };
            ImGui::PlotLines("Frame Times", my_values, IM_ARRAYSIZE(my_values));

            // Display contents in a scrolling region
            ImGui::TextColored(ImVec4(1,1,0,1), "List:");
            ImGui::BeginChild("Scrolling");
            for (int n = 0; n < 10; n++) {
                ImGui::Text("%04d: Object", n);
            }

            ImGui::EndChild();
            ImGui::End();

            if (!my_tool_active)
            {
                clicked = 0;
            }
        }

        static float value = 0.0f;
        ImGui::SliderFloat("Change Style", &value, 0.f, 100.0f);

        if (value >= 20)
        {
            ImGui::StyleColorsDark();
        }
        if (value >= 30)
        {
            ImGui::StyleColorsLight();
        }
        if (value >= 60)
        {
            ImGui::StyleColorsClassic();
        }

        if (ImGui::ShowStyleSelector("Style##Selector"))
        {
            value = 0;
        }

        static int clickedMaterialEditor = 0;
        if (ImGui::Button("Open Material Editor Window"))
        {
            clickedMaterialEditor++;
        }

        if (clickedMaterialEditor)
        {
            MaterialEditor();
        }

        ImGui::End();

        ImGui::Begin("Content Browser");

        std::string text1 = "Search:";
//        ImGui::Text(text1.c_str());

        static char buf[32] = u8"type here";
        ImGui::InputText("Search", buf, IM_ARRAYSIZE(buf));
        ImGui::SetCursorPosY(0.0f);

        ImGui::End();

        ImGui::PushStyleColor(ImGuiCol_WindowBg, ImVec4(col2[0], col2[1], col2[2], col2[3])); // Set window background to red
        ImGui::Begin("Viewport");
        ImGui::PopStyleColor();
        auto windowWidth = ImGui::GetWindowSize().x;
        auto windowHeight = ImGui::GetWindowSize().y;

        std::string text = "This is a scene";
        auto textWidth= ImGui::CalcTextSize(text.c_str()).x;
        auto textHeight= ImGui::CalcTextSize(text.c_str()).y;

        ImGui::SetCursorPosX((windowWidth - textWidth) * 0.5f);
        ImGui::SetCursorPosY((windowHeight - textHeight) * 0.5f );
        ImGui::Text(text.c_str());

        ImGui::End();

        ImGui::ShowDemoWindow();

        ImGui::End();
    }

    void MaterialEditor()
    {

        bool my_tool_active = true;

        ImGui::Begin("Material Editor", &my_tool_active, ImGuiWindowFlags_MenuBar);
        bool AutoScroll = true;
        ImGuiTextFilter Filter;

        ImGui::Separator();

        // Options menu
        if (ImGui::BeginPopup("Options"))
        {
            ImGui::Checkbox("Auto-scroll", &AutoScroll);
            ImGui::EndPopup();
        }

        // Options, Filter
        if (ImGui::Button("Options"))
            ImGui::OpenPopup("Options");
        ImGui::SameLine();
        Filter.Draw("Filter (\"incl,-excl\") (\"error\")", 180);
        ImGui::Separator();

        if (!my_tool_active)
        {
//            ImGui::EndChild();
            my_tool_active = false;
        }

        ImGui::End();
    }

}
