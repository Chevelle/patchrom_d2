.class public abstract Lmiui/maml/ObjectFactory$BitmapProviderFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"

# interfaces
.implements Lmiui/maml/ObjectFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BitmapProviderFactory"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "BitmapProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "BitmapProvider"

    return-object v0
.end method
