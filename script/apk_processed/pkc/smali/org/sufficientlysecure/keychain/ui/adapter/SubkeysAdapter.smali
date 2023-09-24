.class public Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;
.super Landroid/widget/BaseAdapter;
.source "SubkeysAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 58
    invoke-direct {v0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    .line 60
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 4

    move-object/16 v1, p0

    .line 280
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    if-eqz v0, :cond_0

    invoke-super {v1}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;--->areAllItemsEnabled()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCount()I
    .locals 4

    move-object/16 v1, p0

    .line 70
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;--->getCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->getItem(I)Lorg/sufficientlysecure/keychain/model/SubKey;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/sufficientlysecure/keychain/model/SubKey;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 75
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/SubKey;

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;--->getItem(I)Lorg/sufficientlysecure/keychain/model/SubKey;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemId(I)J
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 80
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/model/SubKey;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v0

    return-wide v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;--->getItemId(I)J"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27

    move-object/16 v24, p0

    move/16 v25, p1

    move-object/16 v26, p2

    move-object/16 p0, p3

    move-object/from16 v0, v24

    const/4 v1, 0x0

    if-eqz v26, :cond_0

    move-object/from16 v2, v26

    goto :goto_0

    .line 89
    :cond_0
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0c010d

    move-object/from16 v4, p0

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 92
    :goto_0
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    const v4, 0x7f0902f9

    if-nez v3, :cond_1

    .line 93
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 94
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 97
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902f2

    .line 98
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0902f4

    .line 99
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0902f6

    .line 100
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0902f8

    .line 101
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0902f7

    .line 102
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0902f5

    .line 103
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f0902f3

    .line 104
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v11, 0x7f0902fa

    .line 105
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v12, 0x7f0902f1

    .line 108
    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const/16 v13, 0x8

    .line 109
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    invoke-virtual/range {v24 .. v25}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->getItem(I)Lorg/sufficientlysecure/keychain/model/SubKey;

    move-result-object v12

    .line 113
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 117
    iget-object v15, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    .line 119
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->algorithm()I

    move-result v13

    .line 120
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_size()Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v16, v2

    .line 121
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_curve_oid()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v15, v13, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 124
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-object/from16 v17, v3

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getSubkeyChange(J)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object/from16 v17, v3

    const/4 v2, 0x0

    :goto_1
    const v3, 0x7f11083c

    const/4 v13, 0x1

    if-eqz v2, :cond_5

    .line 125
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getDummyStrip()Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getMoveKeyToSecurityToken()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 126
    :cond_3
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getDummyStrip()Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, ", "

    .line 127
    invoke-virtual {v14, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 128
    new-instance v15, Landroid/text/SpannableString;

    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    .line 129
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v13}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v15}, Landroid/text/SpannableString;->length()I

    move-result v3

    move-object/from16 v21, v11

    const/16 v11, 0x21

    const/4 v13, 0x0

    invoke-virtual {v15, v1, v13, v3, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 132
    invoke-virtual {v14, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_4
    move-object/from16 v21, v11

    .line 134
    :goto_2
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getMoveKeyToSecurityToken()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ", "

    .line 135
    invoke-virtual {v14, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    const v3, 0x7f110805

    .line 137
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v11, 0x0

    const/16 v13, 0x21

    invoke-virtual {v1, v2, v11, v3, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 140
    invoke-virtual {v14, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_5
    move-object/from16 v21, v11

    .line 143
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter$1;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedSecretKey$SecretKeyType:[I

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->has_secret()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v1, ", "

    .line 153
    invoke-virtual {v14, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 154
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    const v2, 0x7f110832

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :pswitch_1
    const-string v1, ", "

    .line 149
    invoke-virtual {v14, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 150
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    const v2, 0x7f110805

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :pswitch_2
    const-string v1, ", "

    .line 145
    invoke-virtual {v14, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 146
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 162
    :cond_6
    :goto_3
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 164
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->rank()J

    move-result-wide v1

    const-wide/16 v13, 0x0

    cmp-long v3, v1, v13

    if-nez v3, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_8

    move-object/from16 v3, v17

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_5

    :cond_8
    move-object/from16 v3, v17

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 168
    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 172
    :goto_5
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_certify()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_encrypt()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_7

    :cond_a
    const/16 v1, 0x8

    :goto_7
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_sign()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_8

    :cond_b
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->can_authenticate()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_9

    :cond_c
    const/16 v1, 0x8

    :goto_9
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->is_revoked()Z

    move-result v1

    .line 180
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->expires()Z

    move-result v11

    const-wide/16 v17, 0x3e8

    if-eqz v11, :cond_d

    .line 181
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->expiry()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object/from16 v22, v3

    mul-long v2, v19, v17

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v2, v11

    goto :goto_a

    :cond_d
    move-object/from16 v22, v3

    const/4 v2, 0x0

    .line 185
    :goto_a
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    if-eqz v3, :cond_12

    .line 186
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getMutableRevokeSubKeys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v1, :cond_e

    const/4 v1, 0x1

    .line 194
    :cond_e
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getSubkeyChange(J)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 196
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v19, 0x0

    cmp-long v2, v13, v19

    if-nez v2, :cond_f

    goto :goto_b

    .line 199
    :cond_f
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;->getExpiry()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    mul-long v13, v13, v17

    invoke-direct {v2, v13, v14}, Ljava/util/Date;-><init>(J)V

    goto :goto_c

    :cond_10
    :goto_b
    const/4 v2, 0x0

    :cond_11
    :goto_c
    const/4 v3, 0x0

    .line 203
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    :cond_12
    const/16 v3, 0x8

    .line 205
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_d
    const v3, 0x7f1108a2

    if-eqz v2, :cond_13

    .line 210
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v10}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v10

    const-string v11, "UTC"

    .line 211
    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 212
    invoke-virtual {v11, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 214
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    invoke-virtual {v13, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    .line 217
    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 221
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    const v10, 0x7f110baf

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    :goto_e
    if-nez v1, :cond_15

    if-nez v10, :cond_15

    .line 225
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->is_secure()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_f

    :cond_14
    const/4 v2, 0x0

    goto :goto_10

    :cond_15
    :goto_f
    const/4 v2, 0x1

    :goto_10
    if-eqz v2, :cond_19

    move-object/from16 v11, v21

    const/4 v3, 0x0

    .line 227
    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    .line 230
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x7f060051

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 229
    invoke-virtual {v6, v3, v14}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 232
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    .line 233
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 232
    invoke-virtual {v7, v3, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 235
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    .line 236
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 235
    invoke-virtual {v8, v3, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 238
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    .line 239
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 238
    invoke-virtual {v9, v3, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v1, :cond_17

    const v1, 0x7f080130

    .line 243
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    .line 245
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 244
    invoke-virtual {v11, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_16
    :goto_11
    move-object/from16 v3, v22

    goto :goto_12

    :cond_17
    if-eqz v10, :cond_18

    const v1, 0x7f08012c

    .line 248
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    .line 250
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 249
    invoke-virtual {v11, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_11

    .line 252
    :cond_18
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/model/SubKey;->is_secure()Z

    move-result v1

    if-nez v1, :cond_16

    const v1, 0x7f08012e

    .line 253
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->context:Landroid/content/Context;

    .line 255
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 254
    invoke-virtual {v11, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_11

    :cond_19
    move-object/from16 v11, v21

    const/16 v1, 0x8

    .line 259
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v3, v22

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 262
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 263
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 265
    invoke-virtual {v6}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 266
    invoke-virtual {v7}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 267
    invoke-virtual {v8}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 268
    invoke-virtual {v9}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_12
    xor-int/lit8 v1, v2, 0x1

    .line 270
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    xor-int/lit8 v1, v2, 0x1

    .line 271
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v1, 0x1

    xor-int/2addr v1, v2

    .line 272
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-object v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;--->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isEnabled(I)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 286
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    if-eqz v0, :cond_0

    invoke-super {v1, v2}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;--->isEnabled(I)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 64
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->data:Ljava/util/List;

    .line 65
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->notifyDataSetChanged()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;--->setData(Ljava/util/List;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setEditMode(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 300
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 301
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->notifyDataSetChanged()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;--->setEditMode(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
