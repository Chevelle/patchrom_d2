.class public interface abstract Lmiui/v5/app/TitleBar;
.super Ljava/lang/Object;
.source "TitleBar.java"


# static fields
.field public static final ACTION_CUSTOM:I = 0x102002b

.field public static final ACTION_HOME:I = 0x102002c

.field public static final ACTION_SHORTCUT:I = 0x1020017

.field public static final TYPE_INVALID:I = -0x1

.field public static final TYPE_LARGE:I = 0x1

.field public static final TYPE_MEDIUM:I = 0x2

.field public static final TYPE_NORMAL:I


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getPrimaryText()Ljava/lang/CharSequence;
.end method

.method public abstract getSecondaryText()Ljava/lang/CharSequence;
.end method

.method public abstract getTertiaryText()Ljava/lang/CharSequence;
.end method

.method public abstract getType()I
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract setCustomView(I)Landroid/view/View;
.end method

.method public abstract setCustomView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end method

.method public abstract setCustomViewVisibility(I)V
.end method

.method public abstract setHomeIcon(I)V
.end method

.method public abstract setHomeIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setHomeIconVisibility(I)V
.end method

.method public abstract setLogoIcon(I)V
.end method

.method public abstract setLogoIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setLogoIconVisibility(I)V
.end method

.method public abstract setPrimaryText(I)V
.end method

.method public abstract setPrimaryText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setPrimaryTextVisibility(I)V
.end method

.method public abstract setSecondaryText(I)V
.end method

.method public abstract setSecondaryText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setSecondaryTextVisibility(I)V
.end method

.method public abstract setSeparator(I)V
.end method

.method public abstract setSeparator(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setShortcutIcon(I)V
.end method

.method public abstract setShortcutIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setShortcutIconVisibility(I)V
.end method

.method public abstract setTertiaryText(I)V
.end method

.method public abstract setTertiaryText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTertiaryTextTextVisibility(I)V
.end method
