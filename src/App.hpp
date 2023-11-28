#pragma once

#include "battery/battery.hpp"

class App : public b::Application
{
public:
    App() = default;
    ~App() = default;

    void onSetup() override;
    void onUpdate() override;
    void onRender() override;
    void onClose() override;
};