.class Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MiuiGrantCredentialsPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/accounts/MiuiGrantCredentialsPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "layoutResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 211
    iput p2, p0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationAdapter;->mLayoutResourceId:I

    .line 212
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 216
    if-nez p2, :cond_0

    .line 217
    invoke-virtual {p0}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationAdapter;->mLayoutResourceId:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 220
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;

    .line 221
    .local v1, item:Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;
    const v4, 0x60b0103

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 222
    .local v0, iconView:Landroid/widget/ImageView;
    iget-object v4, v1, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    const v4, 0x60b0104

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 225
    .local v3, titleView:Landroid/widget/TextView;
    iget-object v4, v1, Lmiui/accounts/MiuiGrantCredentialsPermissionActivity$ApplicationItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const v4, 0x60b0105

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 228
    .local v2, summaryView:Landroid/widget/TextView;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    return-object p2
.end method
