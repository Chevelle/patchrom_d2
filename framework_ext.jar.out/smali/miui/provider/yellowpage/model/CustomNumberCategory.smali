.class public Lmiui/provider/yellowpage/model/CustomNumberCategory;
.super Lmiui/provider/yellowpage/model/Category;
.source "CustomNumberCategory.java"


# instance fields
.field private mIsUserCustom:Z

.field private mMarkedCount:I

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;IZ)V
    .locals 0
    .parameter "id"
    .parameter "names"
    .parameter "type"
    .parameter "number"
    .parameter "markedCount"
    .parameter "isUserCustom"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lmiui/provider/yellowpage/model/Category;-><init>(ILjava/lang/String;I)V

    .line 14
    iput-object p4, p0, Lmiui/provider/yellowpage/model/CustomNumberCategory;->mNumber:Ljava/lang/String;

    .line 15
    iput p5, p0, Lmiui/provider/yellowpage/model/CustomNumberCategory;->mMarkedCount:I

    .line 16
    iput-boolean p6, p0, Lmiui/provider/yellowpage/model/CustomNumberCategory;->mIsUserCustom:Z

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .parameter "id"
    .parameter "names"
    .parameter "number"
    .parameter "markedCount"
    .parameter "isUserCustom"

    .prologue
    .line 21
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/provider/yellowpage/model/CustomNumberCategory;-><init>(ILjava/lang/String;ILjava/lang/String;IZ)V

    .line 23
    return-void
.end method


# virtual methods
.method public getMarkedCount()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lmiui/provider/yellowpage/model/CustomNumberCategory;->mMarkedCount:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lmiui/provider/yellowpage/model/CustomNumberCategory;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isNumberCategoryCustom()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lmiui/provider/yellowpage/model/CustomNumberCategory;->mIsUserCustom:Z

    return v0
.end method
