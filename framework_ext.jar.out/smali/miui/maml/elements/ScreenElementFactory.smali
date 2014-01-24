.class public Lmiui/maml/elements/ScreenElementFactory;
.super Ljava/lang/Object;
.source "ScreenElementFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;
    }
.end annotation


# instance fields
.field private mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;
    .locals 2
    .parameter "ele"
    .parameter "root"

    .prologue
    .line 24
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, tag:Ljava/lang/String;
    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    new-instance v1, Lmiui/maml/elements/ImageScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 66
    :goto_0
    return-object v1

    .line 27
    :cond_0
    const-string v1, "Time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    new-instance v1, Lmiui/maml/elements/TimepanelScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 29
    :cond_1
    const-string v1, "ImageNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    new-instance v1, Lmiui/maml/elements/ImageNumberScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 31
    :cond_2
    const-string v1, "Text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    new-instance v1, Lmiui/maml/elements/TextScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 33
    :cond_3
    const-string v1, "DateTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    new-instance v1, Lmiui/maml/elements/DateTimeScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 35
    :cond_4
    const-string v1, "Button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 36
    new-instance v1, Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 37
    :cond_5
    const-string v1, "MusicControl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 38
    new-instance v1, Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 39
    :cond_6
    const-string v1, "ElementGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "Group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 40
    :cond_7
    new-instance v1, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 41
    :cond_8
    const-string v1, "Var"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 42
    new-instance v1, Lmiui/maml/elements/VariableElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/VariableElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 43
    :cond_9
    const-string v1, "VarArray"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 44
    new-instance v1, Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 45
    :cond_a
    const-string v1, "SpectrumVisualizer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 46
    new-instance v1, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 47
    :cond_b
    const-string v1, "Slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 48
    new-instance v1, Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 49
    :cond_c
    const-string v1, "FramerateController"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 50
    new-instance v1, Lmiui/maml/elements/FramerateController;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/FramerateController;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 51
    :cond_d
    const-string v1, "VirtualScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 52
    new-instance v1, Lmiui/maml/elements/VirtualScreen;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/VirtualScreen;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 53
    :cond_e
    const-string v1, "Line"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 54
    new-instance v1, Lmiui/maml/elements/LineScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/LineScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 55
    :cond_f
    const-string v1, "Rectangle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 56
    new-instance v1, Lmiui/maml/elements/RectangleScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/RectangleScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 57
    :cond_10
    const-string v1, "Ellipse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 58
    new-instance v1, Lmiui/maml/elements/EllipseScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/EllipseScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 59
    :cond_11
    const-string v1, "Circle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 60
    new-instance v1, Lmiui/maml/elements/CircleScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/CircleScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 61
    :cond_12
    const-string v1, "Arc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 62
    new-instance v1, Lmiui/maml/elements/ArcScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/ArcScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    .line 63
    :cond_13
    iget-object v1, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    if-eqz v1, :cond_14

    .line 64
    iget-object v1, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    invoke-interface {v1, p1, p2}, Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;->onCreateInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    goto/16 :goto_0

    .line 66
    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public getCallback()Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    return-object v0
.end method

.method public setCallback(Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;)V
    .locals 0
    .parameter "factoryCallback"

    .prologue
    .line 16
    iput-object p1, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    .line 17
    return-void
.end method
