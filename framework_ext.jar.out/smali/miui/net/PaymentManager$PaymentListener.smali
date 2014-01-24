.class public interface abstract Lmiui/net/PaymentManager$PaymentListener;
.super Ljava/lang/Object;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/PaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PaymentListener"
.end annotation


# virtual methods
.method public abstract onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Landroid/os/Bundle;)V
.end method
