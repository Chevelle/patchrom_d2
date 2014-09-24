.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 58
    return-void
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;Z)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "context"
    .parameter "layoutId"
    .parameter "fieldId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;
    .locals 26
    .parameter "context"
    .parameter "layoutId"
    .parameter "fieldId"
    .parameter "isInDeveloperMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIZ)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 111
    .local v22, resources:Landroid/content/res/Resources;
    new-instance v18, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Lcom/android/internal/app/LocalePicker;->getMiuiSupportLocale(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    .local v18, localeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 114
    const-string v2, "zz_ZZ"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    const-string v2, "zz_ZZ"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 124
    .local v19, locales:[Ljava/lang/String;
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    .end local v19           #locales:[Ljava/lang/String;
    check-cast v19, [Ljava/lang/String;

    .line 126
    .restart local v19       #locales:[Ljava/lang/String;
    const v2, 0x1070007

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    .line 127
    .local v24, specialLocaleCodes:[Ljava/lang/String;
    const v2, 0x1070008

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    .line 128
    .local v25, specialLocaleNames:[Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 129
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 130
    .local v20, origSize:I
    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v21, v0

    .line 131
    .local v21, preprocess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v12, 0x0

    .line 132
    .local v12, finalSize:I
    const/4 v14, 0x0

    .local v14, i:I
    move v13, v12

    .end local v12           #finalSize:I
    .local v13, finalSize:I
    :goto_0
    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 133
    aget-object v23, v19, v14

    .line 134
    .local v23, s:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v17

    .line 135
    .local v17, len:I
    const/4 v2, 0x5

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 136
    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 137
    .local v16, language:Ljava/lang/String;
    const/4 v2, 0x3

    const/4 v3, 0x5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 138
    .local v10, country:Ljava/lang/String;
    new-instance v15, Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .local v15, l:Ljava/util/Locale;
    if-nez v13, :cond_1

    .line 144
    add-int/lit8 v12, v13, 0x1

    .end local v13           #finalSize:I
    .restart local v12       #finalSize:I
    new-instance v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v15}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v21, v13

    .line 132
    .end local v10           #country:Ljava/lang/String;
    .end local v15           #l:Ljava/util/Locale;
    .end local v16           #language:Ljava/lang/String;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move v13, v12

    .end local v12           #finalSize:I
    .restart local v13       #finalSize:I
    goto :goto_0

    .line 151
    .restart local v10       #country:Ljava/lang/String;
    .restart local v15       #l:Ljava/util/Locale;
    .restart local v16       #language:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v13, -0x1

    aget-object v2, v21, v2

    iget-object v2, v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v13, -0x1

    aget-object v2, v21, v2

    iget-object v2, v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zz"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    add-int/lit8 v2, v13, -0x1

    aget-object v2, v21, v2

    add-int/lit8 v3, v13, -0x1

    aget-object v3, v21, v3

    iget-object v3, v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v3, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 167
    add-int/lit8 v12, v13, 0x1

    .end local v13           #finalSize:I
    .restart local v12       #finalSize:I
    new-instance v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v15, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v15}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v21, v13

    goto :goto_1

    .line 173
    .end local v12           #finalSize:I
    .restart local v13       #finalSize:I
    :cond_2
    const-string v2, "zz_ZZ"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    const-string v11, "[Developer] Accented English"

    .line 183
    .local v11, displayName:Ljava/lang/String;
    :goto_2
    add-int/lit8 v12, v13, 0x1

    .end local v13           #finalSize:I
    .restart local v12       #finalSize:I
    new-instance v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-direct {v2, v11, v15}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v21, v13

    goto :goto_1

    .line 175
    .end local v11           #displayName:Ljava/lang/String;
    .end local v12           #finalSize:I
    .restart local v13       #finalSize:I
    :cond_3
    const-string v2, "zz_ZY"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    const-string v11, "[Developer] Fake Bi-Directional"

    .restart local v11       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 178
    .end local v11           #displayName:Ljava/lang/String;
    :cond_4
    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 189
    .end local v10           #country:Ljava/lang/String;
    .end local v11           #displayName:Ljava/lang/String;
    .end local v15           #l:Ljava/util/Locale;
    .end local v16           #language:Ljava/lang/String;
    .end local v17           #len:I
    .end local v23           #s:Ljava/lang/String;
    :cond_5
    new-array v6, v13, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .local v6, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_6

    aget-object v2, v21, v14

    aput-object v2, v6, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_6
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/android/internal/app/Injector$LocalePickerHook;->adjustLocaleOrder([Lcom/android/internal/app/LocalePicker$LocaleInfo;)V

    const-string v2, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 197
    .local v7, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Lcom/android/internal/app/LocalePicker$1;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/LocalePicker$1;-><init>(Landroid/content/Context;II[Lcom/android/internal/app/LocalePicker$LocaleInfo;Landroid/view/LayoutInflater;II)V

    return-object v2

    .end local v6           #localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    .restart local v17       #len:I
    .restart local v23       #s:Ljava/lang/String;
    :cond_7
    move v12, v13

    .end local v13           #finalSize:I
    .restart local v12       #finalSize:I
    goto/16 :goto_1
.end method

.method public static constructAdapter(Landroid/content/Context;Z)Landroid/widget/ArrayAdapter;
    .locals 2
    .parameter "context"
    .parameter "isInDeveloperMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const v0, 0x109005b

    const v1, 0x102017a

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "l"
    .parameter "specialLocaleCodes"
    .parameter "specialLocaleNames"

    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 232
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    aget-object v2, p2, v1

    .line 237
    :goto_1
    return-object v2

    .line 231
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getMiuiSupportLocale(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 1
    .parameter "resources"
    .prologue
    sget v0, Lcom/miui/internal/R$array;->supported_locale:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 224
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 278
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 279
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 283
    .local v1, config:Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 285
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 287
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected isInDeveloperMode()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->isInDeveloperMode()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;Z)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 245
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 268
    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 270
    .end local v0           #locale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 256
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 250
    return-void
.end method





