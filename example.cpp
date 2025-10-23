#include <iostream>
#include "ContextGDIPlus.h"
#include "ImageData.h"

using namespace canvas;

int main() {
    ContextGDIPlus::initialize();
    auto context = new ContextGDIPlus(100, 100);
    context->moveTo(10, 10);
    context->lineTo(20, 20);
    context->strokeStyle = "#ff0000";
    context->stroke();
    std::cout << context->getDefaultSurface().createImage(1)->getDataPtr()->calculateSize();
}
