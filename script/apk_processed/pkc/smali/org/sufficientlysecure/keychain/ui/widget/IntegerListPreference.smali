.class public Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;
.super Landroid/preference/ListPreference;
.source "IntegerListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 34
    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 36
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;->verifyEntryValues([Ljava/lang/CharSequence;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 40
    invoke-direct {v0, v1, v2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;->verifyEntryValues([Ljava/lang/CharSequence;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private verifyEntryValues([Ljava/lang/CharSequence;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 80
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 87
    :try_start_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    invoke-super {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 90
    throw v0

    :cond_1
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;--->verifyEntryValues([Ljava/lang/CharSequence;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    .line 69
    :goto_0
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;->getPersistedInt(I)I

    move-result v1

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;--->getPersistedString(Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;->persistInt(I)Z

    move-result v1

    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;--->persistString(Ljava/lang/String;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setEntryValues(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 54
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 55
    invoke-super {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 56
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;->verifyEntryValues([Ljava/lang/CharSequence;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;--->setEntryValues(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 47
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 48
    invoke-super {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 49
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;->verifyEntryValues([Ljava/lang/CharSequence;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/IntegerListPreference;--->setEntryValues([Ljava/lang/CharSequence;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
