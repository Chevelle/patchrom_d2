.class public final Lmiui/provider/ExtraContacts$Interest;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Interest"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.com.miui.cursor.item/interest"

.field public static final TYPE_BOY:I = 0x2

.field public static final TYPE_FRIENDS:I = 0x3

.field public static final TYPE_GIRL:I = 0x1

.field public static final VALUE:Ljava/lang/String; = "data1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    return-void
.end method
