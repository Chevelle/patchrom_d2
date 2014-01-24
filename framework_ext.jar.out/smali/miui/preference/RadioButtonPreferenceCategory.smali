.class public Lmiui/preference/RadioButtonPreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "RadioButtonPreferenceCategory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioButtonPreferenceCategory"


# instance fields
.field private mCheckedPosition:I

.field private mRadioButtonPreference:Lmiui/preference/RadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Lmiui/preference/RadioButtonPreference;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 22
    return-void
.end method


# virtual methods
.method public addPreference(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 26
    instance-of v1, p1, Lmiui/preference/RadioButtonPreference;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only CheckBoxPreference can be added toRadioButtonPreferenceCategory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-result v0

    .line 30
    .local v0, added:Z
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 34
    :cond_1
    return v0
.end method

.method public getCheckedPosition()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    return v0
.end method

.method public getCheckedPreference()Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Lmiui/preference/RadioButtonPreference;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 73
    iget-object v1, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Lmiui/preference/RadioButtonPreference;

    if-eq p1, v1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lmiui/preference/RadioButtonPreferenceCategory;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    .line 77
    .local v0, listener:Landroid/preference/Preference$OnPreferenceClickListener;
    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 80
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public setCheckedPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    .line 61
    return-void
.end method

.method public setCheckedPreference(Landroid/preference/Preference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 46
    invoke-virtual {p0}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 47
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 48
    invoke-virtual {p0, v1}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    .line 49
    .local v2, pref:Lmiui/preference/RadioButtonPreference;
    if-ne v2, p1, :cond_0

    .line 50
    iput-object v2, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mRadioButtonPreference:Lmiui/preference/RadioButtonPreference;

    .line 51
    iput v1, p0, Lmiui/preference/RadioButtonPreferenceCategory;->mCheckedPosition:I

    .line 52
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 47
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .line 57
    .end local v2           #pref:Lmiui/preference/RadioButtonPreference;
    :cond_1
    return-void
.end method

.method public unCheckAllPreference()V
    .locals 4

    .prologue
    .line 38
    invoke-virtual {p0}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 39
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 40
    invoke-virtual {p0, v1}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    .line 41
    .local v2, pref:Lmiui/preference/RadioButtonPreference;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v2           #pref:Lmiui/preference/RadioButtonPreference;
    :cond_0
    return-void
.end method
