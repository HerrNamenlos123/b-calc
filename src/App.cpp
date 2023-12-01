#include "App.hpp"

void App::onSetup() {
    window->bindEmbeddedLuaScript<"src/ui/main.lua">();
    window->setIcon(b::Resource::FromBytes(b::embed<"assets/icon.png">().vec(), "png"));
}

void App::onUpdate() {

}

void App::onRender() {

}

void App::onClose() {

}
