.class public Lmiui/v5/app/TitleBars;
.super Ljava/lang/Object;
.source "TitleBars.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/app/TitleBars$TitleBarImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static create(Landroid/app/Activity;II)Lmiui/v5/app/TitleBar;
    .locals 2
    .parameter "a"
    .parameter "id"
    .parameter "type"

    .prologue
    .line 57
    new-instance v0, Lmiui/v5/app/TitleBars$TitleBarImpl;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lmiui/v5/app/TitleBars$TitleBarImpl;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    return-object v0
.end method

.method public static create(Landroid/app/Activity;Landroid/view/View;I)Lmiui/v5/app/TitleBar;
    .locals 1
    .parameter "a"
    .parameter "view"
    .parameter "type"

    .prologue
    .line 66
    new-instance v0, Lmiui/v5/app/TitleBars$TitleBarImpl;

    invoke-direct {v0, p0, p1, p2}, Lmiui/v5/app/TitleBars$TitleBarImpl;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    return-object v0
.end method

.method public static inflate(Landroid/app/Activity;ILandroid/view/ViewGroup;)Lmiui/v5/app/TitleBar;
    .locals 5
    .parameter "a"
    .parameter "type"
    .parameter "parent"

    .prologue
    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, layoutId:I
    packed-switch p1, :pswitch_data_0

    .line 43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad TitleBar type. type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    :pswitch_0
    const v1, 0x6030054

    .line 46
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, p2, v3}, Lmiui/v5/widget/Views;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, container:Landroid/view/View;
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    invoke-static {p0, v0, p1}, Lmiui/v5/app/TitleBars;->create(Landroid/app/Activity;Landroid/view/View;I)Lmiui/v5/app/TitleBar;

    move-result-object v2

    return-object v2

    .line 37
    .end local v0           #container:Landroid/view/View;
    :pswitch_1
    const v1, 0x6030052

    .line 38
    goto :goto_0

    .line 40
    :pswitch_2
    const v1, 0x6030053

    .line 41
    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
