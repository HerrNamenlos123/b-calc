#include "App.hpp"

void App::onSetup() {
    window->bindEmbeddedLuaScript<"src/ui/main.lua">();
}

void App::onUpdate() {

}

void App::onRender() {

}

void App::onClose() {

}
