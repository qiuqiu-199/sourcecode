.class public Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;
.super Ljava/lang/Object;
.source "KeyInfoFormatter.java"


# static fields
.field private static final JUST_NOW_THRESHOLD:J = 0x493e0L


# instance fields
.field private context:Landroid/content/Context;

.field private highlighter:Lorg/sufficientlysecure/keychain/ui/util/Highlighter;

.field private keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->context:Landroid/content/Context;

    .line 28
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->highlighter:Lorg/sufficientlysecure/keychain/ui/util/Highlighter;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getSecretKeyReadableTime(Landroid/content/Context;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/lang/String;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    .line 154
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->creation()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 156
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_duplicate()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-wide/32 v2, 0x493e0

    cmp-long v8, v4, v2

    if-gez v8, :cond_0

    const v8, 0x7f1108ac

    .line 160
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_0
    const v8, 0x10015

    .line 164
    invoke-static {v7, v0, v1, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    const v0, 0x7f1108ab

    const/4 v1, 0x1

    .line 170
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;--->getSecretKeyReadableTime(Landroid/content/Context;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public formatCreationDate(Landroid/widget/TextView;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 58
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_duplicate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 62
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->context:Landroid/content/Context;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-direct {v2, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->getSecretKeyReadableTime(Landroid/content/Context;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 60
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;--->formatCreationDate(Landroid/widget/TextView;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public formatStatusIcon(Landroid/widget/ImageView;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 89
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_revoked()Z

    move-result v0

    const v1, 0x7f060051

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->context:Landroid/content/Context;

    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->REVOKED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v0, v6, v2, v4, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    .line 98
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_expired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->context:Landroid/content/Context;

    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v0, v6, v2, v4, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    .line 108
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_secure()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->context:Landroid/content/Context;

    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->INSECURE:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v0, v6, v2, v4, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V

    .line 118
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 120
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_verified()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->context:Landroid/content/Context;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->VERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-static {v0, v6, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    .line 130
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 132
    :cond_4
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;--->formatStatusIcon(Landroid/widget/ImageView;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public formatTrustIcon(Landroid/widget/ImageView;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 138
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->autocrypt_package_names()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->autocrypt_package_names()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->context:Landroid/content/Context;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;->getDrawableForPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;--->formatTrustIcon(Landroid/widget/ImageView;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public formatUserId(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    .line 40
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId(J)Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->context:Landroid/content/Context;

    const v4, 0x7f110873

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 45
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->highlighter:Lorg/sufficientlysecure/keychain/ui/util/Highlighter;

    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;->highlight(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 48
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->highlighter:Lorg/sufficientlysecure/keychain/ui/util/Highlighter;

    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;->highlight(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->highlighter:Lorg/sufficientlysecure/keychain/ui/util/Highlighter;

    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;->highlight(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->highlighter:Lorg/sufficientlysecure/keychain/ui/util/Highlighter;

    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;->highlight(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;--->formatUserId(Landroid/widget/TextView;Landroid/widget/TextView;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public greyInvalidKeys(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 70
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_revoked()Z

    move-result v0

    const v1, 0x7f060051

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_expired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_secure()Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v0

    const v1, 0x7f040089

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->getColorFromAttr(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 79
    :cond_3
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->getColorFromAttr(Landroid/content/Context;I)I

    move-result v0

    .line 81
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;--->greyInvalidKeys(Ljava/util/List;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setHighlightString(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 36
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->highlighter:Lorg/sufficientlysecure/keychain/ui/util/Highlighter;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;->setQuery(Ljava/lang/String;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;--->setHighlightString(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 32
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;--->setKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
