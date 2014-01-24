.class final enum Lmiui/analytics/PersistenceHelper$Mode;
.super Ljava/lang/Enum;
.source "PersistenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/analytics/PersistenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/analytics/PersistenceHelper$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/analytics/PersistenceHelper$Mode;

.field public static final enum READ_ONLY:Lmiui/analytics/PersistenceHelper$Mode;

.field public static final enum READ_WRITE:Lmiui/analytics/PersistenceHelper$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lmiui/analytics/PersistenceHelper$Mode;

    const-string v1, "READ_WRITE"

    invoke-direct {v0, v1, v2}, Lmiui/analytics/PersistenceHelper$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/analytics/PersistenceHelper$Mode;->READ_WRITE:Lmiui/analytics/PersistenceHelper$Mode;

    .line 23
    new-instance v0, Lmiui/analytics/PersistenceHelper$Mode;

    const-string v1, "READ_ONLY"

    invoke-direct {v0, v1, v3}, Lmiui/analytics/PersistenceHelper$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/analytics/PersistenceHelper$Mode;->READ_ONLY:Lmiui/analytics/PersistenceHelper$Mode;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/analytics/PersistenceHelper$Mode;

    sget-object v1, Lmiui/analytics/PersistenceHelper$Mode;->READ_WRITE:Lmiui/analytics/PersistenceHelper$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/analytics/PersistenceHelper$Mode;->READ_ONLY:Lmiui/analytics/PersistenceHelper$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/analytics/PersistenceHelper$Mode;->$VALUES:[Lmiui/analytics/PersistenceHelper$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/analytics/PersistenceHelper$Mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lmiui/analytics/PersistenceHelper$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/analytics/PersistenceHelper$Mode;

    return-object v0
.end method

.method public static values()[Lmiui/analytics/PersistenceHelper$Mode;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lmiui/analytics/PersistenceHelper$Mode;->$VALUES:[Lmiui/analytics/PersistenceHelper$Mode;

    invoke-virtual {v0}, [Lmiui/analytics/PersistenceHelper$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/analytics/PersistenceHelper$Mode;

    return-object v0
.end method
