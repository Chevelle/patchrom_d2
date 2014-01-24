.class public Lmiui/widget/ImageTextView;
.super Landroid/widget/LinearLayout;
.source "ImageTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageTextView"


# instance fields
.field private final ENTRIES_INDEX:I

.field private final ENTRYVALUES_INDEX:I

.field private final ImageTextView_Styleable:[I

.field private final VIEW_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private mCharMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ImageTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ImageTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, -0x2

    const/4 v7, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lmiui/widget/ImageTextView;->VIEW_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 21
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lmiui/widget/ImageTextView;->ImageTextView_Styleable:[I

    .line 22
    iput v7, p0, Lmiui/widget/ImageTextView;->ENTRIES_INDEX:I

    .line 23
    const/4 v4, 0x1

    iput v4, p0, Lmiui/widget/ImageTextView;->ENTRYVALUES_INDEX:I

    .line 37
    invoke-virtual {p0, v7}, Lmiui/widget/ImageTextView;->setOrientation(I)V

    .line 39
    iget-object v4, p0, Lmiui/widget/ImageTextView;->ImageTextView_Styleable:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 41
    .local v2, keys:[Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lmiui/widget/ImageTextView;->getDrawableIds(Landroid/content/res/TypedArray;)[Ljava/lang/Integer;

    move-result-object v3

    .line 43
    .local v3, values:[Ljava/lang/Integer;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 44
    array-length v4, v2

    array-length v5, v3

    if-ne v4, v5, :cond_0

    .line 45
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    .line 46
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 47
    iget-object v4, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    aget-object v5, v2, v1

    invoke-interface {v5, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v1           #i:I
    :cond_0
    const-string v4, "ImageTextView"

    const-string v5, "keys and values not matched"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    return-void

    .line 21
    nop

    :array_0
    .array-data 0x4
        0xb2t 0x0t 0x1t 0x1t
        0xf8t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method private getDrawableIds(Landroid/content/res/TypedArray;)[Ljava/lang/Integer;
    .locals 6
    .parameter "attrs"

    .prologue
    .line 56
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 57
    .local v2, outValue:Landroid/util/TypedValue;
    const/4 v4, 0x0

    .line 58
    .local v4, result:[Ljava/lang/Integer;
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 60
    .local v3, res:Landroid/content/res/Resources;
    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    new-array v4, v5, [Ljava/lang/Integer;

    .line 62
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v0           #array:Landroid/content/res/TypedArray;
    .end local v1           #i:I
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmiui/widget/ImageTextView;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/ImageTextView;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setCharacterMap(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, charMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    .line 76
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "chars"

    .prologue
    .line 84
    iget-object v3, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lmiui/widget/ImageTextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    :cond_0
    return-void

    .line 88
    :cond_1
    iput-object p1, p0, Lmiui/widget/ImageTextView;->mText:Ljava/lang/CharSequence;

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 91
    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 92
    invoke-virtual {p0, v0}, Lmiui/widget/ImageTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 98
    .local v2, v:Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lmiui/widget/ImageTextView;->mCharMap:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 99
    .local v1, resId:Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v1           #resId:Ljava/lang/Integer;
    .end local v2           #v:Landroid/view/View;
    :cond_2
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lmiui/widget/ImageTextView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 95
    .restart local v2       #v:Landroid/view/View;
    iget-object v3, p0, Lmiui/widget/ImageTextView;->VIEW_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {p0, v2}, Lmiui/widget/ImageTextView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 102
    .restart local v1       #resId:Ljava/lang/Integer;
    :cond_3
    const-string v3, "ImageTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No drawable id maps "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 105
    .end local v1           #resId:Ljava/lang/Integer;
    .end local v2           #v:Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lmiui/widget/ImageTextView;->getChildCount()I

    move-result v0

    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_0

    .line 106
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lmiui/widget/ImageTextView;->removeViewAt(I)V

    .line 105
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method
