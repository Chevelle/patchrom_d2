.class public Lcom/android/vcard/VCardBuilder;
.super Ljava/lang/Object;
.source "VCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardBuilder$PostalStruct;
    }
.end annotation


# static fields
.field public static final DEFAULT_EMAIL_TYPE:I = 0x3

.field public static final DEFAULT_PHONE_TYPE:I = 0x1

.field public static final DEFAULT_POSTAL_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final VCARD_DATA_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field private static final VCARD_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VCARD_DATA_VCARD:Ljava/lang/String; = "VCARD"

.field public static final VCARD_END_OF_LINE:Ljava/lang/String; = "\r\n"

.field private static final VCARD_ITEM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_PARAM_ENCODING_BASE64_AS_B:Ljava/lang/String; = "ENCODING=B"

.field private static final VCARD_PARAM_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VCARD_PARAM_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VCARD_PARAM_EQUAL:Ljava/lang/String; = "="

.field private static final VCARD_PARAM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_WS:Ljava/lang/String; = " "

.field private static final sAllowedAndroidPropertySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPostalTypePriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppendTypeParamName:Z

.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mCharset:Ljava/lang/String;

.field private mEndAppended:Z

.field private final mIsDoCoMo:Z

.field private final mIsJapaneseMobilePhone:Z

.field private final mIsV30OrV40:Z

.field private final mNeedsToConvertPhoneticString:Z

.field private final mOnlyOneNoteFieldIsAvailable:Z

.field private final mRefrainsQPToNameProperties:Z

.field private final mShouldAppendCharsetParam:Z

.field private final mShouldUseQuotedPrintable:Z

.field private final mUsesAndroidProperty:Z

.field private final mUsesDefactProperty:Z

.field private final mVCardCharsetParameter:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v3

    const-string v2, "vnd.android.cursor.item/contact_event"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/relation"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    .line 1028
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    .line 1029
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .parameter "vcardType"
    .parameter "charset"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 137
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "vCard"

    const-string v3, "Should not use vCard 4.0 when building vCard. It is not officially published yet."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    .line 143
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    .line 144
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    .line 145
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    .line 146
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    .line 147
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    .line 148
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    .line 149
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    .line 150
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->appendTypeParamName(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mAppendTypeParamName:Z

    .line 151
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    .line 157
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "UTF-8"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    .line 160
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    const-string v0, "SHIFT_JIS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    const-string v0, "SHIFT_JIS"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 199
    :goto_1
    const-string v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    .line 220
    :goto_2
    invoke-virtual {p0}, Lcom/android/vcard/VCardBuilder;->clear()V

    .line 221
    return-void

    :cond_4
    move v0, v1

    .line 142
    goto :goto_0

    .line 175
    :cond_5
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 197
    :cond_6
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 201
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    const-string v0, "vCard"

    const-string v1, "Use the charset \"UTF-8\" for export."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 206
    const-string v0, "CHARSET=UTF-8"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_2

    .line 216
    :cond_8
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHARSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_2
.end method

.method private appendNamePropertiesV40(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v2, :cond_1

    .line 320
    :cond_0
    const-string v2, "vCard"

    const-string v21, "Invalid flag is used in vCard 4.0 construction. Ignored."

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 324
    :cond_2
    const-string v2, "FN"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_0
    return-object p0

    .line 333
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v8

    .line 335
    .local v8, contentValues:Landroid/content/ContentValues;
    const-string v2, "data3"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, familyName:Ljava/lang/String;
    const-string v2, "data5"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, middleName:Ljava/lang/String;
    const-string v2, "data2"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, givenName:Ljava/lang/String;
    const-string v2, "data4"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, prefix:Ljava/lang/String;
    const-string v2, "data6"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 340
    .local v7, suffix:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/vcard/VCardBuilder;->getDisplayName(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v16

    .line 341
    .local v16, formattedName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 346
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 347
    const-string v2, "FN"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_4
    move-object/from16 v3, v16

    .line 353
    :cond_5
    const-string v2, "data9"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 355
    .local v17, phoneticFamilyName:Ljava/lang/String;
    const-string v2, "data8"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 357
    .local v19, phoneticMiddleName:Ljava/lang/String;
    const-string v2, "data7"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 359
    .local v18, phoneticGivenName:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 360
    .local v10, escapedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 361
    .local v12, escapedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 362
    .local v13, escapedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 363
    .local v14, escapedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 365
    .local v15, escapedSuffix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "N"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 370
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v21, 0x3b

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v21, 0x3b

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 374
    .local v20, sortAs:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "SORT-AS="

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v20 .. v20}, Lcom/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .end local v20           #sortAs:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 395
    const-string v2, "vCard"

    const-string v21, "DISPLAY_NAME is empty."

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static/range {v2 .. v7}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 399
    .local v9, escaped:Ljava/lang/String;
    const-string v2, "FN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .end local v9           #escaped:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 401
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 402
    .local v11, escapedFormatted:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "FN"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private appendPhoneticNameFields(Landroid/content/ContentValues;)V
    .locals 14
    .parameter "contentValues"

    .prologue
    .line 602
    const-string v12, "data9"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 604
    .local v9, tmpPhoneticFamilyName:Ljava/lang/String;
    const-string v12, "data8"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 606
    .local v11, tmpPhoneticMiddleName:Ljava/lang/String;
    const-string v12, "data7"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 608
    .local v10, tmpPhoneticGivenName:Ljava/lang/String;
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v12, :cond_1

    .line 609
    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 610
    .local v4, phoneticFamilyName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 611
    .local v6, phoneticMiddleName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 619
    .local v5, phoneticGivenName:Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 622
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v12, :cond_0

    .line 623
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    :cond_0
    :goto_1
    return-void

    .line 613
    .end local v4           #phoneticFamilyName:Ljava/lang/String;
    .end local v5           #phoneticGivenName:Ljava/lang/String;
    .end local v6           #phoneticMiddleName:Ljava/lang/String;
    :cond_1
    move-object v4, v9

    .line 614
    .restart local v4       #phoneticFamilyName:Ljava/lang/String;
    move-object v6, v11

    .line 615
    .restart local v6       #phoneticMiddleName:Ljava/lang/String;
    move-object v5, v10

    .restart local v5       #phoneticGivenName:Ljava/lang/String;
    goto :goto_0

    .line 636
    :cond_2
    iget v12, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 728
    :cond_3
    :goto_2
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-eqz v12, :cond_0

    .line 729
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 730
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_18

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_18

    const/4 v7, 0x1

    .line 734
    .local v7, reallyUseQuotedPrintable:Z
    :goto_3
    if-eqz v7, :cond_19

    .line 735
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, encodedPhoneticGivenName:Ljava/lang/String;
    :goto_4
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 741
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_4
    if-eqz v7, :cond_5

    .line 745
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    :cond_5
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 753
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_1a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1a

    const/4 v7, 0x1

    .line 757
    .restart local v7       #reallyUseQuotedPrintable:Z
    :goto_5
    if-eqz v7, :cond_1b

    .line 758
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 762
    .local v2, encodedPhoneticMiddleName:Ljava/lang/String;
    :goto_6
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 764
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_7
    if-eqz v7, :cond_8

    .line 768
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    :cond_8
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 776
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_1c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1c

    const/4 v7, 0x1

    .line 780
    .restart local v7       #reallyUseQuotedPrintable:Z
    :goto_7
    if-eqz v7, :cond_1d

    .line 781
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, encodedPhoneticFamilyName:Ljava/lang/String;
    :goto_8
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 787
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_a
    if-eqz v7, :cond_b

    .line 791
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_b
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 638
    .end local v0           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_c
    iget v12, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 639
    iget v12, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12, v4, v6, v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 642
    .local v8, sortString:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SORT-STRING"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget v12, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 648
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_d
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 654
    .end local v8           #sortString:Ljava/lang/String;
    :cond_e
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    if-eqz v12, :cond_3

    .line 668
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v12, :cond_15

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    :cond_f
    const/4 v7, 0x1

    .line 684
    .restart local v7       #reallyUseQuotedPrintable:Z
    :goto_9
    if-eqz v7, :cond_16

    .line 685
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    .restart local v0       #encodedPhoneticFamilyName:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 687
    .restart local v2       #encodedPhoneticMiddleName:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 694
    .restart local v1       #encodedPhoneticGivenName:Ljava/lang/String;
    :goto_a
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    aput-object v1, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 696
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    :cond_10
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const/4 v3, 0x1

    .line 702
    .local v3, first:Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 703
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    const/4 v3, 0x0

    .line 706
    :cond_11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 707
    if-eqz v3, :cond_17

    .line 708
    const/4 v3, 0x0

    .line 712
    :goto_b
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 715
    if-nez v3, :cond_13

    .line 716
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 718
    :cond_13
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :cond_14
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 672
    .end local v0           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v3           #first:Z
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 689
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_16
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 690
    .restart local v0       #encodedPhoneticFamilyName:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 691
    .restart local v2       #encodedPhoneticMiddleName:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_a

    .line 710
    .restart local v3       #first:Z
    :cond_17
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 730
    .end local v0           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v3           #first:Z
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 737
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_19
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_4

    .line 753
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 760
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_1b
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #encodedPhoneticMiddleName:Ljava/lang/String;
    goto/16 :goto_6

    .line 776
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_1c
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 783
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_1d
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedPhoneticFamilyName:Ljava/lang/String;
    goto/16 :goto_8
.end method

.method private appendPostalsForDoCoMo(Ljava/util/List;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1040
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const v7, 0x7fffffff

    .line 1041
    .local v7, currentPriority:I
    const v1, 0x7fffffff

    .line 1042
    .local v1, currentType:I
    const/4 v3, 0x0

    .line 1043
    .local v3, currentContentValues:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1044
    .local v6, contentValues:Landroid/content/ContentValues;
    if-eqz v6, :cond_0

    .line 1047
    const-string v0, "data2"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 1048
    .local v11, typeAsInteger:Ljava/lang/Integer;
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1049
    .local v10, priorityAsInteger:Ljava/lang/Integer;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1051
    .local v9, priority:I
    :goto_0
    if-ge v9, v7, :cond_0

    .line 1052
    move v7, v9

    .line 1053
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1054
    move-object v3, v6

    .line 1055
    if-nez v9, :cond_0

    .line 1061
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v9           #priority:I
    .end local v10           #priorityAsInteger:Ljava/lang/Integer;
    .end local v11           #typeAsInteger:Ljava/lang/Integer;
    :cond_1
    if-nez v3, :cond_3

    .line 1062
    const-string v0, "vCard"

    const-string v4, "Should not come here. Must have at least one postal data."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :goto_1
    return-void

    .line 1049
    .restart local v6       #contentValues:Landroid/content/ContentValues;
    .restart local v10       #priorityAsInteger:Ljava/lang/Integer;
    .restart local v11       #typeAsInteger:Ljava/lang/Integer;
    :cond_2
    const v9, 0x7fffffff

    goto :goto_0

    .line 1066
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v10           #priorityAsInteger:Ljava/lang/Integer;
    .end local v11           #typeAsInteger:Ljava/lang/Integer;
    :cond_3
    const-string v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1067
    .local v2, label:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_1
.end method

.method private appendPostalsForGeneric(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1071
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1072
    .local v3, contentValues:Landroid/content/ContentValues;
    if-eqz v3, :cond_0

    .line 1075
    const-string v0, "data2"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1076
    .local v8, typeAsInteger:Ljava/lang/Integer;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1078
    .local v1, type:I
    :goto_1
    const-string v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1079
    .local v2, label:Ljava/lang/String;
    const-string v0, "is_primary"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1081
    .local v7, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    move v4, v9

    .local v4, isPrimary:Z
    :goto_2
    move-object v0, p0

    .line 1083
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_0

    .end local v1           #type:I
    .end local v2           #label:Ljava/lang/String;
    .end local v4           #isPrimary:Z
    .end local v7           #isPrimaryAsInteger:Ljava/lang/Integer;
    :cond_1
    move v1, v9

    .line 1076
    goto :goto_1

    .restart local v1       #type:I
    .restart local v2       #label:Ljava/lang/String;
    .restart local v7       #isPrimaryAsInteger:Ljava/lang/Integer;
    :cond_2
    move v4, v5

    .line 1081
    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    .line 1085
    .end local v1           #type:I
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #contentValues:Landroid/content/ContentValues;
    .end local v7           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v8           #typeAsInteger:Ljava/lang/Integer;
    :cond_4
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2084
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 2091
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mAppendTypeParamName:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v0, :cond_2

    .line 2093
    :cond_1
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    return-void
.end method

.method private appendTypeParameters(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2049
    .local p1, types:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 2050
    .local v1, first:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2051
    .local v3, typeValue:Ljava/lang/String;
    iget v4, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2052
    :cond_1
    iget v4, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2055
    .local v0, encoded:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2059
    if-eqz v1, :cond_3

    .line 2060
    const/4 v1, 0x0

    .line 2064
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 2052
    .end local v0           #encoded:Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2062
    .restart local v0       #encoded:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2066
    .end local v0           #encoded:Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->isV21Word(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2069
    if-eqz v1, :cond_5

    .line 2070
    const/4 v1, 0x0

    .line 2074
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 2072
    :cond_5
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2077
    .end local v3           #typeValue:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 4
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 1757
    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    .line 1760
    const-string v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    :goto_0
    return-void

    .line 1762
    :cond_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1763
    .local v0, phoneType:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1764
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1766
    :cond_1
    const-string v1, "vCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "property"
    .parameter "part"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 570
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v4, :cond_2

    new-array v4, v2, [Ljava/lang/String;

    aput-object p2, v4, v3

    invoke-static {v4}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 573
    .local v1, reallyUseQuotedPrintable:Z
    :goto_0
    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, encodedPart:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_0
    if-eqz v1, :cond_1

    .line 587
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_1
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    return-void

    .end local v0           #encodedPart:Ljava/lang/String;
    .end local v1           #reallyUseQuotedPrintable:Z
    :cond_2
    move v1, v3

    .line 570
    goto :goto_0

    .line 573
    .restart local v1       #reallyUseQuotedPrintable:Z
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .locals 10
    .parameter "contentValues"

    .prologue
    .line 249
    const-string v9, "data3"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, familyName:Ljava/lang/String;
    const-string v9, "data5"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, middleName:Ljava/lang/String;
    const-string v9, "data2"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, givenName:Ljava/lang/String;
    const-string v9, "data4"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 253
    .local v7, prefix:Ljava/lang/String;
    const-string v9, "data6"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 254
    .local v8, suffix:Ljava/lang/String;
    const-string v9, "data9"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, phoneticFamilyName:Ljava/lang/String;
    const-string v9, "data8"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, phoneticMiddleName:Ljava/lang/String;
    const-string v9, "data7"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, phoneticGivenName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->getDisplayName(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "str"

    .prologue
    .line 2124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2125
    const-string v5, ""

    .line 2158
    :goto_0
    return-object v5

    .line 2128
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2129
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 2130
    .local v2, index:I
    const/4 v3, 0x0

    .line 2131
    .local v3, lineCount:I
    const/4 v4, 0x0

    .line 2134
    .local v4, strArray:[B
    :try_start_0
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2140
    :cond_1
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 2141
    const-string v5, "=%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v4, v2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2142
    add-int/lit8 v2, v2, 0x1

    .line 2143
    add-int/lit8 v3, v3, 0x3

    .line 2145
    const/16 v5, 0x43

    if-lt v3, v5, :cond_1

    .line 2153
    const-string v5, "=\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    const/4 v3, 0x0

    goto :goto_1

    .line 2135
    :catch_0
    move-exception v1

    .line 2136
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v5, "vCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Charset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be used. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Try default charset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_1

    .line 2158
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "unescaped"

    .prologue
    const/16 v6, 0x5c

    .line 2169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2170
    const-string v5, ""

    .line 2233
    :goto_0
    return-object v5

    .line 2173
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2174
    .local v4, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2175
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 2176
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2177
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 2228
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2175
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2179
    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2180
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2184
    :sswitch_1
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_2

    .line 2185
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2186
    .local v3, nextChar:C
    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 2198
    .end local v3           #nextChar:C
    :cond_2
    :sswitch_2
    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2202
    :sswitch_3
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_3

    .line 2203
    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2211
    :cond_3
    :sswitch_4
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v5, :cond_4

    .line 2212
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2213
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2215
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2220
    :sswitch_5
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_5

    .line 2221
    const-string v5, "\\,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2223
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2233
    .end local v0           #ch:C
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2177
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_5
        0x3b -> :sswitch_0
        0x3c -> :sswitch_4
        0x3e -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method private getDisplayName(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 2
    .parameter "contentValues"

    .prologue
    .line 240
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "display_name_alt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "display_name_alt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .line 271
    .local v4, primaryContentValues:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 272
    .local v5, subprimaryContentValues:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 273
    .local v0, contentValues:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 276
    const-string v6, "is_super_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 277
    .local v3, isSuperPrimary:Ljava/lang/Integer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    .line 279
    move-object v4, v0

    .line 297
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v3           #isSuperPrimary:Ljava/lang/Integer;
    :cond_1
    if-nez v4, :cond_2

    .line 298
    if-eqz v5, :cond_5

    .line 300
    move-object v4, v5

    .line 307
    :cond_2
    :goto_1
    return-object v4

    .line 281
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v3       #isSuperPrimary:Ljava/lang/Integer;
    :cond_3
    if-nez v4, :cond_0

    .line 284
    const-string v6, "is_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 285
    .local v2, isPrimary:Ljava/lang/Integer;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_4

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 287
    move-object v4, v0

    goto :goto_0

    .line 290
    :cond_4
    if-nez v5, :cond_0

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    move-object v5, v0

    goto :goto_0

    .line 303
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #isPrimary:Ljava/lang/Integer;
    .end local v3           #isSuperPrimary:Ljava/lang/Integer;
    :cond_5
    new-instance v4, Landroid/content/ContentValues;

    .end local v4           #primaryContentValues:Landroid/content/ContentValues;
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4       #primaryContentValues:Landroid/content/ContentValues;
    goto :goto_1
.end method

.method private varargs shouldAppendCharsetParam([Ljava/lang/String;)Z
    .locals 7
    .parameter "propertyValueList"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2112
    iget-boolean v6, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-nez v6, :cond_1

    .line 2120
    :cond_0
    :goto_0
    return v4

    .line 2115
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2116
    .local v3, propertyValue:Ljava/lang/String;
    new-array v6, v5, [Ljava/lang/String;

    aput-object v3, v6, v4

    invoke-static {v6}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    .line 2117
    goto :goto_0

    .line 2115
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "phoneNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 952
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .local v4, phoneList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 956
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 957
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 958
    .local v1, ch:C
    const/16 v5, 0xa

    if-ne v1, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 959
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 956
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 962
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 965
    .end local v1           #ch:C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 966
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    :cond_2
    return-object v4
.end method

.method private tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/android/vcard/VCardBuilder$PostalStruct;
    .locals 25
    .parameter "contentValues"

    .prologue
    .line 1106
    const-string v23, "data5"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1107
    .local v18, rawPoBox:Ljava/lang/String;
    const-string v23, "data6"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1108
    .local v17, rawNeighborhood:Ljava/lang/String;
    const-string v23, "data4"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1109
    .local v21, rawStreet:Ljava/lang/String;
    const-string v23, "data7"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1110
    .local v15, rawLocality:Ljava/lang/String;
    const-string v23, "data8"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1111
    .local v20, rawRegion:Ljava/lang/String;
    const-string v23, "data9"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1112
    .local v19, rawPostalCode:Ljava/lang/String;
    const-string v23, "data10"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1113
    .local v13, rawCountry:Ljava/lang/String;
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v12, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    aput-object v18, v12, v23

    const/16 v23, 0x1

    aput-object v17, v12, v23

    const/16 v23, 0x2

    aput-object v21, v12, v23

    const/16 v23, 0x3

    aput-object v15, v12, v23

    const/16 v23, 0x4

    aput-object v20, v12, v23

    const/16 v23, 0x5

    aput-object v19, v12, v23

    const/16 v23, 0x6

    aput-object v13, v12, v23

    .line 1116
    .local v12, rawAddressArray:[Ljava/lang/String;
    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->areAllEmpty([Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 1117
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_0

    const/16 v22, 0x1

    .line 1120
    .local v22, reallyUseQuotedPrintable:Z
    :goto_0
    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1

    const/4 v4, 0x1

    .line 1140
    .local v4, appendCharset:Z
    :goto_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1141
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1142
    const-string v16, ""

    .line 1153
    .local v16, rawLocality2:Ljava/lang/String;
    :goto_2
    if-eqz v22, :cond_5

    .line 1154
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1155
    .local v8, encodedPoBox:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1156
    .local v11, encodedStreet:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1157
    .local v7, encodedLocality:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1158
    .local v10, encodedRegion:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1159
    .local v9, encodedPostalCode:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1169
    .local v5, encodedCountry:Ljava/lang/String;
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1170
    .local v3, addressBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    new-instance v23, Lcom/android/vcard/VCardBuilder$PostalStruct;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    .line 1214
    .end local v3           #addressBuilder:Ljava/lang/StringBuilder;
    .end local v4           #appendCharset:Z
    .end local v5           #encodedCountry:Ljava/lang/String;
    .end local v7           #encodedLocality:Ljava/lang/String;
    .end local v8           #encodedPoBox:Ljava/lang/String;
    .end local v9           #encodedPostalCode:Ljava/lang/String;
    .end local v10           #encodedRegion:Ljava/lang/String;
    .end local v11           #encodedStreet:Ljava/lang/String;
    .end local v16           #rawLocality2:Ljava/lang/String;
    .end local v22           #reallyUseQuotedPrintable:Z
    :goto_4
    return-object v23

    .line 1117
    :cond_0
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1120
    .restart local v22       #reallyUseQuotedPrintable:Z
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1144
    .restart local v4       #appendCharset:Z
    :cond_2
    move-object/from16 v16, v17

    .restart local v16       #rawLocality2:Ljava/lang/String;
    goto/16 :goto_2

    .line 1147
    .end local v16           #rawLocality2:Ljava/lang/String;
    :cond_3
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1148
    move-object/from16 v16, v15

    .restart local v16       #rawLocality2:Ljava/lang/String;
    goto/16 :goto_2

    .line 1150
    .end local v16           #rawLocality2:Ljava/lang/String;
    :cond_4
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #rawLocality2:Ljava/lang/String;
    goto/16 :goto_2

    .line 1161
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1162
    .restart local v8       #encodedPoBox:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1163
    .restart local v11       #encodedStreet:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1164
    .restart local v7       #encodedLocality:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1165
    .restart local v10       #encodedRegion:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1166
    .restart local v9       #encodedPostalCode:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1167
    .restart local v5       #encodedCountry:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    .line 1186
    .end local v4           #appendCharset:Z
    .end local v5           #encodedCountry:Ljava/lang/String;
    .end local v7           #encodedLocality:Ljava/lang/String;
    .end local v8           #encodedPoBox:Ljava/lang/String;
    .end local v9           #encodedPostalCode:Ljava/lang/String;
    .end local v10           #encodedRegion:Ljava/lang/String;
    .end local v11           #encodedStreet:Ljava/lang/String;
    .end local v16           #rawLocality2:Ljava/lang/String;
    .end local v22           #reallyUseQuotedPrintable:Z
    :cond_6
    const-string v23, "data1"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1188
    .local v14, rawFormattedAddress:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1189
    const/16 v23, 0x0

    goto :goto_4

    .line 1191
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v14, v23, v24

    invoke-static/range {v23 .. v23}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_8

    const/16 v22, 0x1

    .line 1194
    .restart local v22       #reallyUseQuotedPrintable:Z
    :goto_5
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v14, v23, v24

    invoke-static/range {v23 .. v23}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_9

    const/4 v4, 0x1

    .line 1197
    .restart local v4       #appendCharset:Z
    :goto_6
    if-eqz v22, :cond_a

    .line 1198
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1206
    .local v6, encodedFormattedAddress:Ljava/lang/String;
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1207
    .restart local v3       #addressBuilder:Ljava/lang/StringBuilder;
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    new-instance v23, Lcom/android/vcard/VCardBuilder$PostalStruct;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    goto/16 :goto_4

    .line 1191
    .end local v3           #addressBuilder:Ljava/lang/StringBuilder;
    .end local v4           #appendCharset:Z
    .end local v6           #encodedFormattedAddress:Ljava/lang/String;
    .end local v22           #reallyUseQuotedPrintable:Z
    :cond_8
    const/16 v22, 0x0

    goto :goto_5

    .line 1194
    .restart local v22       #reallyUseQuotedPrintable:Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_6

    .line 1200
    .restart local v4       #appendCharset:Z
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #encodedFormattedAddress:Ljava/lang/String;
    goto :goto_7
.end method


# virtual methods
.method public appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 12
    .parameter "mimeType"
    .parameter "contentValues"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1867
    sget-object v10, Lcom/android/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    invoke-interface {v10, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1911
    :goto_0
    return-void

    .line 1870
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1871
    .local v5, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    const/16 v10, 0xf

    if-gt v1, v10, :cond_2

    .line 1872
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "data"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1873
    .local v7, value:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 1874
    const-string v7, ""

    .line 1876
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1871
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1879
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    iget-boolean v10, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-eqz v10, :cond_5

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_5

    move v3, v8

    .line 1882
    .local v3, needCharset:Z
    :goto_2
    iget-boolean v10, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v10, :cond_6

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_6

    move v6, v8

    .line 1885
    .local v6, reallyUseQuotedPrintable:Z
    :goto_3
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "X-ANDROID-CUSTOM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    if-eqz v3, :cond_3

    .line 1887
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    :cond_3
    if-eqz v6, :cond_4

    .line 1891
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    :cond_4
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1898
    .local v4, rawValue:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 1899
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1907
    .local v0, encodedValue:Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #needCharset:Z
    .end local v4           #rawValue:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    :cond_5
    move v3, v9

    .line 1879
    goto :goto_2

    .restart local v3       #needCharset:Z
    :cond_6
    move v6, v9

    .line 1882
    goto :goto_3

    .line 1905
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #rawValue:Ljava/lang/String;
    .restart local v6       #reallyUseQuotedPrintable:Z
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedValue:Ljava/lang/String;
    goto :goto_5

    .line 1910
    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v4           #rawValue:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "type"
    .parameter "label"
    .parameter "rawValue"
    .parameter "isPrimary"

    .prologue
    .line 1566
    packed-switch p1, :pswitch_data_0

    .line 1595
    const-string v2, "vCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Email type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const/4 v1, 0x0

    .line 1601
    .local v1, typeAsString:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1602
    .local v0, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 1603
    const-string v2, "PREF"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1605
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1606
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    :cond_1
    const-string v2, "EMAIL"

    invoke-virtual {p0, v2, v0, p3}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1611
    return-void

    .line 1568
    .end local v0           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1569
    const-string v1, "CELL"

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1570
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1574
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .line 1576
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1579
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_1
    const-string v1, "HOME"

    .line 1580
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1583
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_2
    const-string v1, "WORK"

    .line 1584
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1587
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .line 1588
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1591
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_4
    const-string v1, "CELL"

    .line 1592
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1566
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 972
    const/4 v3, 0x0

    .line 973
    .local v3, emailAddressExists:Z
    if-eqz p1, :cond_5

    .line 974
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 975
    .local v0, addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 976
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v12, "data1"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 977
    .local v2, emailAddress:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 978
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 980
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 983
    const-string v12, "data2"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 984
    .local v9, typeAsObject:Ljava/lang/Integer;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 986
    .local v8, type:I
    :goto_1
    const-string v12, "data3"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 987
    .local v7, label:Ljava/lang/String;
    const-string v12, "is_primary"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 988
    .local v6, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_3

    move v5, v10

    .line 990
    .local v5, isPrimary:Z
    :goto_2
    const/4 v3, 0x1

    .line 991
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 992
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 993
    invoke-virtual {p0, v8, v7, v2, v5}, Lcom/android/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 984
    .end local v5           #isPrimary:Z
    .end local v6           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #type:I
    :cond_2
    const/4 v8, 0x3

    goto :goto_1

    .restart local v6       #isPrimaryAsInteger:Ljava/lang/Integer;
    .restart local v7       #label:Ljava/lang/String;
    .restart local v8       #type:I
    :cond_3
    move v5, v11

    .line 988
    goto :goto_2

    :cond_4
    move v5, v11

    goto :goto_2

    .line 998
    .end local v0           #addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #emailAddress:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #type:I
    .end local v9           #typeAsObject:Ljava/lang/Integer;
    :cond_5
    if-nez v3, :cond_6

    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v12, :cond_6

    .line 999
    const-string v12, ""

    const-string v13, ""

    invoke-virtual {p0, v10, v12, v13, v11}, Lcom/android/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1002
    :cond_6
    return-object p0
.end method

.method public appendEvents(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1415
    if-eqz p1, :cond_2

    .line 1416
    const/4 v9, 0x0

    .line 1417
    .local v9, primaryBirthday:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1418
    .local v10, secondaryBirthday:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1419
    .local v1, contentValues:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 1422
    const-string v13, "data2"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1424
    .local v3, eventTypeAsInteger:Ljava/lang/Integer;
    if-eqz v3, :cond_3

    .line 1425
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1429
    .local v2, eventType:I
    :goto_1
    const/4 v13, 0x3

    if-ne v2, v13, :cond_a

    .line 1430
    const-string v13, "data1"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1431
    .local v0, birthdayCandidate:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1434
    const-string v13, "is_super_primary"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1436
    .local v8, isSuperPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_4

    move v7, v11

    .line 1438
    .local v7, isSuperPrimary:Z
    :goto_2
    if-eqz v7, :cond_6

    .line 1440
    move-object v9, v0

    .line 1459
    .end local v0           #birthdayCandidate:Ljava/lang/String;
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #eventType:I
    .end local v3           #eventTypeAsInteger:Ljava/lang/Integer;
    .end local v7           #isSuperPrimary:Z
    .end local v8           #isSuperPrimaryAsInteger:Ljava/lang/Integer;
    :cond_1
    if-eqz v9, :cond_b

    .line 1460
    const-string v11, "BDAY"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #primaryBirthday:Ljava/lang/String;
    .end local v10           #secondaryBirthday:Ljava/lang/String;
    :cond_2
    :goto_3
    return-object p0

    .line 1427
    .restart local v1       #contentValues:Landroid/content/ContentValues;
    .restart local v3       #eventTypeAsInteger:Ljava/lang/Integer;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v9       #primaryBirthday:Ljava/lang/String;
    .restart local v10       #secondaryBirthday:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x2

    .restart local v2       #eventType:I
    goto :goto_1

    .restart local v0       #birthdayCandidate:Ljava/lang/String;
    .restart local v8       #isSuperPrimaryAsInteger:Ljava/lang/Integer;
    :cond_4
    move v7, v12

    .line 1436
    goto :goto_2

    :cond_5
    move v7, v12

    goto :goto_2

    .line 1443
    .restart local v7       #isSuperPrimary:Z
    :cond_6
    const-string v13, "is_primary"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1445
    .local v6, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_7

    move v5, v11

    .line 1447
    .local v5, isPrimary:Z
    :goto_4
    if-eqz v5, :cond_9

    .line 1449
    move-object v9, v0

    goto :goto_0

    .end local v5           #isPrimary:Z
    :cond_7
    move v5, v12

    .line 1445
    goto :goto_4

    :cond_8
    move v5, v12

    goto :goto_4

    .line 1450
    .restart local v5       #isPrimary:Z
    :cond_9
    if-nez v10, :cond_0

    .line 1452
    move-object v10, v0

    goto :goto_0

    .line 1454
    .end local v0           #birthdayCandidate:Ljava/lang/String;
    .end local v5           #isPrimary:Z
    .end local v6           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v7           #isSuperPrimary:Z
    .end local v8           #isSuperPrimaryAsInteger:Ljava/lang/Integer;
    :cond_a
    iget-boolean v13, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v13, :cond_0

    .line 1456
    const-string v13, "vnd.android.cursor.item/contact_event"

    invoke-virtual {p0, v13, v1}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1462
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #eventType:I
    .end local v3           #eventTypeAsInteger:Ljava/lang/Integer;
    :cond_b
    if-eqz v10, :cond_2

    .line 1463
    const-string v11, "BDAY"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public appendIms(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v11, 0x0

    .line 1220
    if-eqz p1, :cond_8

    .line 1221
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1222
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v12, "data5"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1223
    .local v8, protocolAsObject:Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 1226
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->getPropertyNameForIm(I)Ljava/lang/String;

    move-result-object v7

    .line 1227
    .local v7, propertyName:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1230
    const-string v12, "data1"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1231
    .local v1, data:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1232
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1234
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1239
    const-string v12, "data2"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 1240
    .local v9, typeAsInteger:Ljava/lang/Integer;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_1
    packed-switch v12, :pswitch_data_0

    .line 1256
    const/4 v10, 0x0

    .line 1262
    .local v10, typeAsString:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    .local v6, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1264
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    :cond_2
    const-string v12, "is_primary"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1267
    .local v4, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_6

    const/4 v3, 0x1

    .line 1269
    .local v3, isPrimary:Z
    :goto_3
    if-eqz v3, :cond_3

    .line 1270
    const-string v12, "PREF"

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    :cond_3
    invoke-virtual {p0, v7, v6, v1}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1240
    .end local v3           #isPrimary:Z
    .end local v4           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v6           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #typeAsString:Ljava/lang/String;
    :cond_4
    const/4 v12, 0x3

    goto :goto_1

    .line 1242
    :pswitch_0
    const-string v10, "HOME"

    .line 1243
    .restart local v10       #typeAsString:Ljava/lang/String;
    goto :goto_2

    .line 1246
    .end local v10           #typeAsString:Ljava/lang/String;
    :pswitch_1
    const-string v10, "WORK"

    .line 1247
    .restart local v10       #typeAsString:Ljava/lang/String;
    goto :goto_2

    .line 1250
    .end local v10           #typeAsString:Ljava/lang/String;
    :pswitch_2
    const-string v12, "data3"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1251
    .local v5, label:Ljava/lang/String;
    if-eqz v5, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "X-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1252
    .restart local v10       #typeAsString:Ljava/lang/String;
    :goto_4
    goto :goto_2

    .line 1251
    .end local v10           #typeAsString:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .end local v5           #label:Ljava/lang/String;
    .restart local v4       #isPrimaryAsInteger:Ljava/lang/Integer;
    .restart local v6       #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #typeAsString:Ljava/lang/String;
    :cond_6
    move v3, v11

    .line 1267
    goto :goto_3

    :cond_7
    move v3, v11

    goto :goto_3

    .line 1276
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v6           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #propertyName:Ljava/lang/String;
    .end local v8           #protocolAsObject:Ljava/lang/Integer;
    .end local v9           #typeAsInteger:Ljava/lang/Integer;
    .end local v10           #typeAsString:Ljava/lang/String;
    :cond_8
    return-object p0

    .line 1240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "propertyName"
    .parameter "rawValue"

    .prologue
    const/4 v0, 0x0

    .line 1950
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1951
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .parameter "propertyName"
    .parameter "rawValue"
    .parameter "needCharset"
    .parameter "reallyUseQuotedPrintable"

    .prologue
    .line 1960
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1961
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "propertyName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1954
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 1955
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "propertyName"
    .parameter
    .parameter "rawValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1965
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1966
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 3
    .parameter "propertyName"
    .parameter
    .parameter "rawValue"
    .parameter "needCharset"
    .parameter "reallyUseQuotedPrintable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 1971
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1973
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1976
    :cond_0
    if-eqz p4, :cond_1

    .line 1977
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1982
    :cond_1
    if-eqz p5, :cond_2

    .line 1983
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1984
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1985
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1992
    .local v0, encodedValue:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1994
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    return-void

    .line 1989
    .end local v0           #encodedValue:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 6
    .parameter "propertyName"
    .parameter
    .parameter
    .parameter "needCharset"
    .parameter "needQuotedPrintable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2005
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2007
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 2010
    :cond_0
    if-eqz p4, :cond_1

    .line 2011
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2012
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    :cond_1
    if-eqz p5, :cond_2

    .line 2015
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    :cond_2
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    const/4 v1, 0x1

    .line 2021
    .local v1, first:Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2023
    .local v3, rawValue:Ljava/lang/String;
    if-eqz p5, :cond_3

    .line 2024
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2033
    .local v0, encodedValue:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_4

    .line 2034
    const/4 v1, 0x0

    .line 2038
    :goto_2
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2030
    .end local v0           #encodedValue:Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedValue:Ljava/lang/String;
    goto :goto_1

    .line 2036
    :cond_4
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2040
    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v3           #rawValue:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 6
    .parameter "propertyName"
    .parameter
    .parameter "needCharset"
    .parameter "needQuotedPrintable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1999
    .local p2, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 2000
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "propertyName"
    .parameter "rawValue"

    .prologue
    .line 1915
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1916
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "propertyName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1920
    .local p2, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1921
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "propertyName"
    .parameter
    .parameter "rawValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1925
    new-array v2, v0, [Ljava/lang/String;

    aput-object p3, v2, v1

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v4, v0

    .line 1927
    .local v4, needCharset:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v2, :cond_1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p3, v2, v1

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v5, v0

    .local v5, reallyUseQuotedPrintable:Z
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1930
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1932
    return-void

    .end local v4           #needCharset:Z
    .end local v5           #reallyUseQuotedPrintable:Z
    :cond_0
    move v4, v1

    .line 1925
    goto :goto_0

    .restart local v4       #needCharset:Z
    :cond_1
    move v5, v1

    .line 1927
    goto :goto_1
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter "propertyName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1936
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-eqz v2, :cond_0

    invoke-static {p3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    move v4, v0

    .line 1939
    .local v4, needCharset:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v2, :cond_1

    invoke-static {p3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    move v5, v0

    .local v5, reallyUseQuotedPrintable:Z
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1942
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1944
    return-void

    .end local v4           #needCharset:Z
    .end local v5           #reallyUseQuotedPrintable:Z
    :cond_0
    move v4, v1

    .line 1936
    goto :goto_0

    .restart local v4       #needCharset:Z
    :cond_1
    move v5, v1

    .line 1939
    goto :goto_1
.end method

.method public appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->appendNamePropertiesV40(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object p0

    .line 566
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 423
    .restart local p0
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 424
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 428
    const-string v2, "N"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v2, "FN"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_0

    .line 431
    const-string v2, "N"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v8

    .line 438
    .local v8, contentValues:Landroid/content/ContentValues;
    const-string v2, "data3"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, familyName:Ljava/lang/String;
    const-string v2, "data5"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, middleName:Ljava/lang/String;
    const-string v2, "data2"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 441
    .local v5, givenName:Ljava/lang/String;
    const-string v2, "data4"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 442
    .local v6, prefix:Ljava/lang/String;
    const-string v2, "data6"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 443
    .local v7, suffix:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/vcard/VCardBuilder;->getDisplayName(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v9

    .line 445
    .local v9, displayName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 446
    :cond_5
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v3, v2, v21

    const/16 v21, 0x1

    aput-object v5, v2, v21

    const/16 v21, 0x2

    aput-object v4, v2, v21

    const/16 v21, 0x3

    aput-object v6, v2, v21

    const/16 v21, 0x4

    aput-object v7, v2, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v18

    .line 448
    .local v18, reallyAppendCharsetParameterToName:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v2, :cond_c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v3, v2, v21

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v5, v2, v21

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v4, v2, v21

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v6, v2, v21

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v7, v2, v21

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_6
    const/16 v20, 0x1

    .line 457
    .local v20, reallyUseQuotedPrintableToName:Z
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 458
    move-object/from16 v16, v9

    .line 463
    .local v16, formattedName:Ljava/lang/String;
    :goto_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v16, v2, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v17

    .line 465
    .local v17, reallyAppendCharsetParameterToFN:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v2, :cond_e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v16, v2, v21

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const/16 v19, 0x1

    .line 474
    .local v19, reallyUseQuotedPrintableToFN:Z
    :goto_3
    if-eqz v20, :cond_f

    .line 475
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 476
    .local v10, encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 477
    .local v12, encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 478
    .local v13, encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 479
    .local v14, encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 488
    .local v15, encodedSuffix:Ljava/lang/String;
    :goto_4
    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 492
    .local v11, encodedFormattedname:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "N"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_11

    .line 494
    if-eqz v18, :cond_7

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_7
    if-eqz v20, :cond_8

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "FN"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    if-eqz v17, :cond_9

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_9
    if-eqz v19, :cond_a

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .end local v10           #encodedFamily:Ljava/lang/String;
    .end local v11           #encodedFormattedname:Ljava/lang/String;
    .end local v12           #encodedGiven:Ljava/lang/String;
    .end local v13           #encodedMiddle:Ljava/lang/String;
    .end local v14           #encodedPrefix:Ljava/lang/String;
    .end local v15           #encodedSuffix:Ljava/lang/String;
    .end local v16           #formattedName:Ljava/lang/String;
    .end local v17           #reallyAppendCharsetParameterToFN:Z
    .end local v18           #reallyAppendCharsetParameterToName:Z
    .end local v19           #reallyUseQuotedPrintableToFN:Z
    .end local v20           #reallyUseQuotedPrintableToName:Z
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 448
    .restart local v18       #reallyAppendCharsetParameterToName:Z
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 460
    .restart local v20       #reallyUseQuotedPrintableToName:Z
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static/range {v2 .. v7}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #formattedName:Ljava/lang/String;
    goto/16 :goto_2

    .line 465
    .restart local v17       #reallyAppendCharsetParameterToFN:Z
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 481
    .restart local v19       #reallyUseQuotedPrintableToFN:Z
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 482
    .restart local v10       #encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 483
    .restart local v12       #encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 484
    .restart local v13       #encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 485
    .restart local v14       #encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #encodedSuffix:Ljava/lang/String;
    goto/16 :goto_4

    .line 488
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5

    .line 510
    .restart local v11       #encodedFormattedname:Ljava/lang/String;
    :cond_11
    if-eqz v18, :cond_12

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_12
    if-eqz v20, :cond_13

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 544
    .end local v10           #encodedFamily:Ljava/lang/String;
    .end local v11           #encodedFormattedname:Ljava/lang/String;
    .end local v12           #encodedGiven:Ljava/lang/String;
    .end local v13           #encodedMiddle:Ljava/lang/String;
    .end local v14           #encodedPrefix:Ljava/lang/String;
    .end local v15           #encodedSuffix:Ljava/lang/String;
    .end local v16           #formattedName:Ljava/lang/String;
    .end local v17           #reallyAppendCharsetParameterToFN:Z
    .end local v18           #reallyAppendCharsetParameterToName:Z
    .end local v19           #reallyUseQuotedPrintableToFN:Z
    .end local v20           #reallyUseQuotedPrintableToName:Z
    :cond_14
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 547
    const-string v2, "N"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/android/vcard/VCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string v2, "FN"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/android/vcard/VCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 558
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 559
    const-string v2, "N"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v2, "FN"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 561
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_b

    .line 562
    const-string v2, "N"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public appendNickNames(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 803
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v4, :cond_1

    .line 804
    const/4 v3, 0x0

    .line 811
    .local v3, useAndroidProperty:Z
    :goto_0
    if-eqz p1, :cond_3

    .line 812
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 813
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "data1"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 814
    .local v2, nickname:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 817
    if-eqz v3, :cond_2

    .line 818
    const-string v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {p0, v4, v0}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 805
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nickname:Ljava/lang/String;
    .end local v3           #useAndroidProperty:Z
    :cond_1
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v4, :cond_3

    .line 806
    const/4 v3, 0x1

    .restart local v3       #useAndroidProperty:Z
    goto :goto_0

    .line 820
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #nickname:Ljava/lang/String;
    :cond_2
    const-string v4, "NICKNAME"

    invoke-virtual {p0, v4, v2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 824
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nickname:Ljava/lang/String;
    .end local v3           #useAndroidProperty:Z
    :cond_3
    return-object p0
.end method

.method public appendNotes(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1366
    if-eqz p1, :cond_4

    .line 1367
    iget-boolean v10, p0, Lcom/android/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    if-eqz v10, :cond_7

    .line 1368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1369
    .local v4, noteBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1370
    .local v1, first:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1371
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v10, "data1"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1372
    .local v3, note:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1373
    const-string v3, ""

    .line 1375
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 1376
    if-eqz v1, :cond_2

    .line 1377
    const/4 v1, 0x0

    .line 1381
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1379
    :cond_2
    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1384
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v3           #note:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1387
    .local v5, noteStr:Ljava/lang/String;
    new-array v10, v8, [Ljava/lang/String;

    aput-object v5, v10, v9

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    move v7, v8

    .line 1389
    .local v7, shouldAppendCharsetInfo:Z
    :goto_2
    iget-boolean v10, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v10, :cond_6

    new-array v10, v8, [Ljava/lang/String;

    aput-object v5, v10, v9

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    move v6, v8

    .line 1392
    .local v6, reallyUseQuotedPrintable:Z
    :goto_3
    const-string v8, "NOTE"

    invoke-virtual {p0, v8, v5, v7, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1409
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #noteBuilder:Ljava/lang/StringBuilder;
    .end local v5           #noteStr:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    .end local v7           #shouldAppendCharsetInfo:Z
    :cond_4
    return-object p0

    .restart local v1       #first:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #noteBuilder:Ljava/lang/StringBuilder;
    .restart local v5       #noteStr:Ljava/lang/String;
    :cond_5
    move v7, v9

    .line 1387
    goto :goto_2

    .restart local v7       #shouldAppendCharsetInfo:Z
    :cond_6
    move v6, v9

    .line 1389
    goto :goto_3

    .line 1395
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #noteBuilder:Ljava/lang/StringBuilder;
    .end local v5           #noteStr:Ljava/lang/String;
    .end local v7           #shouldAppendCharsetInfo:Z
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1396
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    const-string v10, "data1"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1397
    .restart local v5       #noteStr:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1398
    new-array v10, v8, [Ljava/lang/String;

    aput-object v5, v10, v9

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    move v7, v8

    .line 1400
    .restart local v7       #shouldAppendCharsetInfo:Z
    :goto_5
    iget-boolean v10, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v10, :cond_a

    new-array v10, v8, [Ljava/lang/String;

    aput-object v5, v10, v9

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    move v6, v8

    .line 1403
    .restart local v6       #reallyUseQuotedPrintable:Z
    :goto_6
    const-string v10, "NOTE"

    invoke-virtual {p0, v10, v5, v7, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    .end local v6           #reallyUseQuotedPrintable:Z
    .end local v7           #shouldAppendCharsetInfo:Z
    :cond_9
    move v7, v9

    .line 1398
    goto :goto_5

    .restart local v7       #shouldAppendCharsetInfo:Z
    :cond_a
    move v6, v9

    .line 1400
    goto :goto_6
.end method

.method public appendOrganizations(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1298
    if-eqz p1, :cond_b

    .line 1299
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1300
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v7, "data1"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, company:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1302
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1304
    :cond_1
    const-string v7, "data5"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1305
    .local v2, department:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1306
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1308
    :cond_2
    const-string v7, "data4"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1309
    .local v6, title:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1310
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1313
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1314
    .local v4, orgBuilder:Ljava/lang/StringBuilder;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1315
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1318
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 1319
    const/16 v7, 0x3b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1321
    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1324
    .local v5, orgline:Ljava/lang/String;
    const-string v11, "ORG"

    new-array v7, v8, [Ljava/lang/String;

    aput-object v5, v7, v9

    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    move v7, v8

    :goto_1
    iget-boolean v10, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v10, :cond_8

    new-array v10, v8, [Ljava/lang/String;

    aput-object v5, v10, v9

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    move v10, v8

    :goto_2
    invoke-virtual {p0, v11, v5, v7, v10}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1329
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1330
    const-string v11, "TITLE"

    new-array v7, v8, [Ljava/lang/String;

    aput-object v6, v7, v9

    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    move v7, v8

    :goto_3
    iget-boolean v10, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v10, :cond_a

    new-array v10, v8, [Ljava/lang/String;

    aput-object v6, v10, v9

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    move v10, v8

    :goto_4
    invoke-virtual {p0, v11, v6, v7, v10}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_7
    move v7, v9

    .line 1324
    goto :goto_1

    :cond_8
    move v10, v9

    goto :goto_2

    :cond_9
    move v7, v9

    .line 1330
    goto :goto_3

    :cond_a
    move v10, v9

    goto :goto_4

    .line 1337
    .end local v0           #company:Ljava/lang/String;
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #department:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #orgBuilder:Ljava/lang/StringBuilder;
    .end local v5           #orgline:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_b
    return-object p0
.end method

.method public appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;
    .locals 29
    .parameter
    .parameter "translationCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/vcard/VCardPhoneNumberTranslationCallback;",
            ")",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 829
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/16 v19, 0x0

    .line 830
    .local v19, phoneLineExists:Z
    if-eqz p1, :cond_e

    .line 831
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 832
    .local v22, phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 833
    .local v7, contentValues:Landroid/content/ContentValues;
    const-string v25, "data2"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    .line 834
    .local v24, typeAsObject:Ljava/lang/Integer;
    const-string v25, "data3"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 835
    .local v15, label:Ljava/lang/String;
    const-string v25, "is_primary"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 836
    .local v14, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-lez v25, :cond_2

    const/4 v13, 0x1

    .line 838
    .local v13, isPrimary:Z
    :goto_1
    const-string v25, "data1"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 839
    .local v20, phoneNumber:Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 840
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 842
    :cond_1
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 846
    if-eqz v24, :cond_4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 850
    .local v23, type:I
    :goto_2
    if-eqz p2, :cond_5

    .line 851
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-interface {v0, v1, v2, v15, v13}, Lcom/android/vcard/VCardPhoneNumberTranslationCallback;->onValueReceived(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    .line 853
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 854
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2, v13}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 836
    .end local v13           #isPrimary:Z
    .end local v20           #phoneNumber:Ljava/lang/String;
    .end local v23           #type:I
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 846
    .restart local v13       #isPrimary:Z
    .restart local v20       #phoneNumber:Ljava/lang/String;
    :cond_4
    const/16 v23, 0x1

    goto :goto_2

    .line 857
    .restart local v23       #type:I
    :cond_5
    const/16 v25, 0x6

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 860
    :cond_6
    const/16 v19, 0x1

    .line 861
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 862
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2, v13}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 866
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 867
    .local v21, phoneNumberList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_0

    .line 870
    const/16 v19, 0x1

    .line 871
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 872
    .local v5, actualPhoneNumber:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 876
    const/16 v25, 0x2c

    const/16 v26, 0x70

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3b

    const/16 v27, 0x77

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v17

    .line 882
    .local v17, numberWithControlSequence:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 883
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 884
    .local v8, digitsOnlyBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    .line 885
    .local v16, length:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4
    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    .line 886
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 887
    .local v6, ch:C
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v25

    if-nez v25, :cond_9

    const/16 v25, 0x2b

    move/from16 v0, v25

    if-ne v6, v0, :cond_a

    .line 888
    :cond_9
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 885
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 891
    .end local v6           #ch:C
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v18

    .line 893
    .local v18, phoneFormat:I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 902
    .end local v8           #digitsOnlyBuilder:Ljava/lang/StringBuilder;
    .end local v10           #i:I
    .end local v16           #length:I
    .end local v18           #phoneFormat:I
    .local v9, formatted:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v25

    if-eqz v25, :cond_c

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_c

    const-string v25, "tel:"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_c

    .line 905
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "tel:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 909
    :cond_c
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 910
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15, v9, v13}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 897
    .end local v9           #formatted:Ljava/lang/String;
    :cond_d
    move-object/from16 v9, v17

    .restart local v9       #formatted:Ljava/lang/String;
    goto :goto_5

    .line 919
    .end local v5           #actualPhoneNumber:Ljava/lang/String;
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .end local v9           #formatted:Ljava/lang/String;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #isPrimary:Z
    .end local v14           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v15           #label:Ljava/lang/String;
    .end local v17           #numberWithControlSequence:Ljava/lang/String;
    .end local v20           #phoneNumber:Ljava/lang/String;
    .end local v21           #phoneNumberList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v22           #phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23           #type:I
    .end local v24           #typeAsObject:Ljava/lang/Integer;
    :cond_e
    if-nez v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 920
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const-string v26, ""

    const-string v27, ""

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 923
    :cond_f
    return-object p0
.end method

.method public appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "encodedValue"
    .parameter "photoType"

    .prologue
    .line 1776
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1777
    .local v6, tmpBuilder:Ljava/lang/StringBuilder;
    const-string v8, "PHOTO"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v8, :cond_1

    .line 1780
    const-string v8, "ENCODING=B"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    :goto_0
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    invoke-direct {p0, v6, p2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1786
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1790
    .local v7, tmpStr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #tmpBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1791
    .restart local v6       #tmpBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1792
    .local v2, lineCount:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    .line 1793
    .local v1, length:I
    const-string v8, "\r\n"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rsub-int/lit8 v4, v8, 0x4b

    .line 1795
    .local v4, maxNumForFirstLine:I
    const-string v8, " "

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v5, v4, v8

    .line 1796
    .local v5, maxNumInGeneral:I
    move v3, v4

    .line 1797
    .local v3, maxNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1798
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1799
    add-int/lit8 v2, v2, 0x1

    .line 1800
    if-le v2, v3, :cond_0

    .line 1801
    const-string v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1802
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    move v3, v5

    .line 1804
    const/4 v2, 0x0

    .line 1797
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1782
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #lineCount:I
    .end local v3           #maxNum:I
    .end local v4           #maxNumForFirstLine:I
    .end local v5           #maxNumInGeneral:I
    .end local v7           #tmpStr:Ljava/lang/String;
    :cond_1
    const-string v8, "ENCODING=BASE64"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1807
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v2       #lineCount:I
    .restart local v3       #maxNum:I
    .restart local v4       #maxNumForFirstLine:I
    .restart local v5       #maxNumInGeneral:I
    .restart local v7       #tmpStr:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    return-void
.end method

.method public appendPhotos(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1341
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_2

    .line 1342
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1343
    .local v0, contentValues:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 1346
    const-string v5, "data15"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1347
    .local v1, data:[B
    if-eqz v1, :cond_0

    .line 1350
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->guessImageType([B)Ljava/lang/String;

    move-result-object v4

    .line 1351
    .local v4, photoType:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1352
    const-string v5, "vCard"

    const-string v6, "Unknown photo type. Ignored."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1356
    :cond_1
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 1357
    .local v3, photoString:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1358
    invoke-virtual {p0, v3, v4}, Lcom/android/vcard/VCardBuilder;->appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1362
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #data:[B
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #photoString:Ljava/lang/String;
    .end local v4           #photoType:Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V
    .locals 8
    .parameter "type"
    .parameter "label"
    .parameter "contentValues"
    .parameter "isPrimary"
    .parameter "emitEveryTime"

    .prologue
    .line 1492
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/android/vcard/VCardBuilder$PostalStruct;

    move-result-object v3

    .line 1493
    .local v3, postalStruct:Lcom/android/vcard/VCardBuilder$PostalStruct;
    if-nez v3, :cond_6

    .line 1494
    if-eqz p5, :cond_5

    .line 1495
    const/4 v4, 0x0

    .line 1496
    .local v4, reallyUseQuotedPrintable:Z
    const/4 v1, 0x0

    .line 1497
    .local v1, appendCharset:Z
    const-string v0, ""

    .line 1508
    .local v0, addressValue:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1509
    .local v2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 1510
    const-string v5, "PREF"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1512
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1536
    const-string v5, "vCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown StructuredPostal type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "ADR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1543
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1546
    :cond_2
    if-eqz v1, :cond_3

    .line 1551
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    :cond_3
    if-eqz v4, :cond_4

    .line 1555
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    :cond_4
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    .end local v0           #addressValue:Ljava/lang/String;
    .end local v1           #appendCharset:Z
    .end local v2           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #reallyUseQuotedPrintable:Z
    :cond_5
    return-void

    .line 1502
    :cond_6
    iget-boolean v4, v3, Lcom/android/vcard/VCardBuilder$PostalStruct;->reallyUseQuotedPrintable:Z

    .line 1503
    .restart local v4       #reallyUseQuotedPrintable:Z
    iget-boolean v1, v3, Lcom/android/vcard/VCardBuilder$PostalStruct;->appendCharset:Z

    .line 1504
    .restart local v1       #appendCharset:Z
    iget-object v0, v3, Lcom/android/vcard/VCardBuilder$PostalStruct;->addressData:Ljava/lang/String;

    .restart local v0       #addressValue:Ljava/lang/String;
    goto :goto_0

    .line 1514
    .restart local v2       #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    const-string v5, "HOME"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1518
    :pswitch_2
    const-string v5, "WORK"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1522
    :pswitch_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1006
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1007
    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "ADR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    :cond_1
    :goto_0
    return-object p0

    .line 1015
    :cond_2
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_3

    .line 1016
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->appendPostalsForDoCoMo(Ljava/util/List;)V

    goto :goto_0

    .line 1018
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->appendPostalsForGeneric(Ljava/util/List;)V

    goto :goto_0
.end method

.method public appendRelation(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1471
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1472
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1473
    .local v0, contentValues:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 1476
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-virtual {p0, v2, v0}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1479
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-object p0
.end method

.method public appendSipAddresses(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v7, 0x4

    .line 1821
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_2

    .line 1822
    const/4 v4, 0x0

    .line 1829
    .local v4, useXProperty:Z
    :goto_0
    if-eqz p1, :cond_6

    .line 1830
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1831
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1832
    .local v3, sipAddress:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1835
    if-eqz v4, :cond_3

    .line 1837
    const-string v5, "sip:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1838
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 1841
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1844
    :cond_1
    const-string v5, "X-SIP"

    invoke-virtual {p0, v5, v3}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1823
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #sipAddress:Ljava/lang/String;
    .end local v4           #useXProperty:Z
    :cond_2
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-eqz v5, :cond_6

    .line 1824
    const/4 v4, 0x1

    .restart local v4       #useXProperty:Z
    goto :goto_0

    .line 1846
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #sipAddress:Ljava/lang/String;
    :cond_3
    const-string v5, "sip:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1847
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1850
    :cond_4
    iget v5, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v5}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1853
    const-string v2, "TEL"

    .line 1858
    .local v2, propertyName:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1856
    .end local v2           #propertyName:Ljava/lang/String;
    :cond_5
    const-string v2, "IMPP"

    .restart local v2       #propertyName:Ljava/lang/String;
    goto :goto_2

    .line 1862
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #propertyName:Ljava/lang/String;
    .end local v3           #sipAddress:Ljava/lang/String;
    .end local v4           #useXProperty:Z
    :cond_6
    return-object p0
.end method

.method public appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "typeAsInteger"
    .parameter "label"
    .parameter "encodedValue"
    .parameter "isPrimary"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1615
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "TEL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    if-nez p1, :cond_2

    .line 1620
    const/4 v1, 0x7

    .line 1625
    .local v1, type:I
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1626
    .local v0, parameterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    packed-switch v1, :pswitch_data_0

    .line 1738
    :cond_0
    :goto_1
    :pswitch_0
    if-eqz p4, :cond_1

    .line 1739
    const-string v3, "PREF"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1742
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1743
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/vcard/VCardBuilder;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 1748
    :goto_2
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    return-void

    .line 1622
    .end local v0           #parameterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #type:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #type:I
    goto :goto_0

    .line 1628
    .restart local v0       #parameterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "HOME"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1633
    :pswitch_2
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1638
    :pswitch_3
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "HOME"

    aput-object v4, v3, v5

    const-string v4, "FAX"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1643
    :pswitch_4
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    const-string v4, "FAX"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1648
    :pswitch_5
    const-string v3, "CELL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1652
    :pswitch_6
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_3

    .line 1655
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1657
    :cond_3
    const-string v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1662
    :pswitch_7
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1666
    :pswitch_8
    const-string v3, "CAR"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1671
    :pswitch_9
    const-string v3, "WORK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    const/4 p4, 0x1

    .line 1673
    goto/16 :goto_1

    .line 1676
    :pswitch_a
    const-string v3, "ISDN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1680
    :pswitch_b
    const/4 p4, 0x1

    .line 1681
    goto/16 :goto_1

    .line 1684
    :pswitch_c
    const-string v3, "FAX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1688
    :pswitch_d
    const-string v3, "TLX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1692
    :pswitch_e
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    const-string v4, "CELL"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1697
    :pswitch_f
    const-string v3, "WORK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_4

    .line 1700
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1702
    :cond_4
    const-string v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1707
    :pswitch_10
    const-string v3, "MSG"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1711
    :pswitch_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1713
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1714
    :cond_5
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1715
    const-string v3, "CELL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1716
    :cond_6
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v3, :cond_7

    .line 1718
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1720
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1721
    .local v2, upperLabel:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1722
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1723
    :cond_8
    new-array v3, v6, [Ljava/lang/String;

    aput-object p2, v3, v5

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1745
    .end local v2           #upperLabel:Ljava/lang/String;
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    goto/16 :goto_2

    .line 1626
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public appendWebsites(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1280
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_2

    .line 1281
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1282
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v3, "data1"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1283
    .local v2, website:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1284
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1289
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1290
    const-string v3, "URL"

    invoke-virtual {p0, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1294
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #website:Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    .line 226
    const-string v0, "BEGIN"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "VERSION"

    const-string v1, "4.0"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 229
    :cond_0
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "VERSION"

    const-string v1, "3.0"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    const-string v0, "vCard"

    const-string v1, "Unknown vCard version detected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    const-string v0, "VERSION"

    const-string v1, "2.1"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2238
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    if-nez v0, :cond_1

    .line 2239
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    .line 2240
    const-string v0, "X-CLASS"

    const-string v1, "PUBLIC"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2241
    const-string v0, "X-REDUCTION"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    const-string v0, "X-NO"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    const-string v0, "X-DCM-HMN-MODE"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    :cond_0
    const-string v0, "END"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    .line 2248
    :cond_1
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
