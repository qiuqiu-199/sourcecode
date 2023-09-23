.class public Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SubkeysAddedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNewKeyring:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;",
            ">;Z)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move/16 p0, p3

    const/4 v0, -0x1

    .line 51
    invoke-direct {v1, v2, v0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 52
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->mActivity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    .line 53
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    iput-boolean p0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->mNewKeyring:Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;---><init>(Landroid/app/Activity;Ljava/util/List;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;)Landroid/app/Activity;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    move-object/16 v7, p0

    move/16 v8, p1

    move-object/16 v9, p2

    move-object/16 p0, p3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez v9, :cond_0

    .line 74
    iget-object v9, v7, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c010d

    invoke-virtual {v9, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 75
    new-instance p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;

    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;-><init>()V

    const v2, 0x7f0902f9

    .line 76
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vKeyId:Landroid/widget/TextView;

    const v2, 0x7f0902f2

    .line 77
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vKeyDetails:Landroid/widget/TextView;

    const v2, 0x7f0902f4

    .line 78
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vKeyExpiry:Landroid/widget/TextView;

    const v2, 0x7f0902f6

    .line 79
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vCertifyIcon:Landroid/widget/ImageView;

    const v2, 0x7f0902f8

    .line 80
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vSignIcon:Landroid/widget/ImageView;

    const v2, 0x7f0902f7

    .line 81
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vEncryptIcon:Landroid/widget/ImageView;

    const v2, 0x7f0902f5

    .line 82
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vAuthenticateIcon:Landroid/widget/ImageView;

    const v2, 0x7f0902f1

    .line 84
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vDelete:Landroid/widget/ImageButton;

    .line 85
    iget-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vDelete:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v2, 0x7f0902f3

    .line 88
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 89
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f0902fa

    .line 90
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 91
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    invoke-virtual {v9, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;

    .line 99
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    iput-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->mModel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    .line 101
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->mModel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    .line 103
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getAlgorithm()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    move-result-object v3

    iget-object v4, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->mModel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    .line 104
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getKeySize()Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->mModel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    .line 105
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getCurve()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    move-result-object v5

    .line 101
    invoke-static {v2, v3, v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/lang/String;

    move-result-object v2

    .line 108
    iget-boolean v3, v7, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->mNewKeyring:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v8, :cond_2

    .line 110
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vKeyId:Landroid/widget/TextView;

    invoke-virtual {v8, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 111
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vDelete:Landroid/widget/ImageButton;

    const v3, 0x7f080096

    invoke-virtual {v8, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 112
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vDelete:Landroid/widget/ImageButton;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;

    invoke-direct {v3, v7, p0}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$1;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;)V

    invoke-virtual {v8, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 137
    :cond_2
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vKeyId:Landroid/widget/TextView;

    invoke-virtual {v8, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 138
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vDelete:Landroid/widget/ImageButton;

    const v3, 0x7f08009d

    invoke-virtual {v8, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 139
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vDelete:Landroid/widget/ImageButton;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$2;

    invoke-direct {v3, v7, p0}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$2;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;)V

    invoke-virtual {v8, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :goto_1
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vKeyId:Landroid/widget/TextView;

    const v3, 0x7f11014c

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vKeyDetails:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->mModel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getExpiry()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v8, v2, v4

    const v2, 0x7f1108a2

    if-eqz v8, :cond_3

    .line 152
    new-instance v8, Ljava/util/Date;

    iget-object v3, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->mModel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getExpiry()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-direct {v8, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-string v3, "UTC"

    .line 153
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 154
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 156
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 158
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vKeyExpiry:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 161
    :cond_3
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vKeyExpiry:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f110baf

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_2
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->mModel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;->getFlags()I

    move-result v8

    and-int/lit8 v2, v8, 0x1

    if-lez v2, :cond_4

    .line 167
    iget-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vCertifyIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 169
    :cond_4
    iget-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vCertifyIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    and-int/lit8 v2, v8, 0x2

    if-lez v2, :cond_5

    .line 172
    iget-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 174
    :cond_5
    iget-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    and-int/lit8 v2, v8, 0x4

    if-gtz v2, :cond_7

    and-int/lit8 v2, v8, 0x8

    if-lez v2, :cond_6

    goto :goto_5

    .line 180
    :cond_6
    iget-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vEncryptIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 178
    :cond_7
    :goto_5
    iget-object v2, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vEncryptIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    and-int/lit8 v8, v8, 0x20

    if-lez v8, :cond_8

    .line 183
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vAuthenticateIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 185
    :cond_8
    iget-object v8, p0, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter$ViewHolder;->vAuthenticateIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    return-object v9

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;--->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
