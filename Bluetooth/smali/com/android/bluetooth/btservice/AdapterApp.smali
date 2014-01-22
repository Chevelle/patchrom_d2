.class public Lcom/android/bluetooth/btservice/AdapterApp;
.super Landroid/app/Application;
.source "AdapterApp.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterApp"

.field private static sRefCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/btservice/AdapterApp;->sRefCount:I

    .line 34
    const-string v0, "bluetooth_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 51
    invoke-static {p0}, Lcom/android/bluetooth/btservice/Config;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method
