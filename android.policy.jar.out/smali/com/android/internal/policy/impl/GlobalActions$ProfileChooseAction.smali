.class abstract Lcom/android/internal/policy/impl/GlobalActions$ProfileChooseAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ProfileChooseAction"
.end annotation


# instance fields
.field private mProfileManager:Landroid/app/ProfileManager;

.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 2
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ProfileChooseAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/GlobalActions;->access$300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ProfileChooseAction;->mProfileManager:Landroid/app/ProfileManager;

    .line 868
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x0

    .line 877
    const v4, 0x1090044

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 879
    .local v3, v:Landroid/view/View;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 880
    .local v0, icon:Landroid/widget/ImageView;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 881
    .local v1, messageView:Landroid/widget/TextView;
    const v4, 0x1020281

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 882
    .local v2, statusView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 883
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 884
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$ProfileChooseAction;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v4}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    :cond_0
    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10802e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 891
    :cond_1
    if-eqz v1, :cond_2

    .line 892
    const v4, 0x104003a

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 895
    :cond_2
    return-object v3
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
