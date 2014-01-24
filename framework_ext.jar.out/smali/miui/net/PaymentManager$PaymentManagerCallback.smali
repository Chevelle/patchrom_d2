.class interface abstract Lmiui/net/PaymentManager$PaymentManagerCallback;
.super Ljava/lang/Object;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/PaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PaymentManagerCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract run(Lmiui/net/PaymentManager$PaymentManagerFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/net/PaymentManager$PaymentManagerFuture",
            "<TV;>;)V"
        }
    .end annotation
.end method
