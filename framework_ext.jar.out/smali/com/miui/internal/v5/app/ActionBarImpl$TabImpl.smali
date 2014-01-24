.class Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;
.super Lcom/android/internal/app/ActionBarImpl$TabImpl;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabImpl"
.end annotation


# instance fields
.field mSystemLisenter:Landroid/app/ActionBar$TabListener;

.field mUserLisenter:Landroid/app/ActionBar$TabListener;

.field final synthetic this$0:Lcom/miui/internal/v5/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/miui/internal/v5/app/ActionBarImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->this$0:Lcom/miui/internal/v5/app/ActionBarImpl;

    .line 539
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    .line 540
    sget-object v0, Lcom/miui/internal/v5/app/ActionBarImpl;->sLisenter:Landroid/app/ActionBar$TabListener;

    invoke-super {p0, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 541
    return-void
.end method


# virtual methods
.method setSystemTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0
    .parameter "callback"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    .line 551
    return-object p0
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0
    .parameter "callback"

    .prologue
    .line 545
    iput-object p1, p0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    .line 546
    return-object p0
.end method
