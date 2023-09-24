.class public Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;
.super Landroid/widget/LinearLayout;
.source "KeyStatusList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;
    }
.end annotation


# instance fields
.field private final vCertIcon:Landroid/widget/ImageView;

.field private final vCertText:Landroid/widget/TextView;

.field private final vCertToken:Landroid/view/View;

.field private final vCertifyLayout:Landroid/view/View;

.field private final vDecryptIcon:Landroid/widget/ImageView;

.field private final vDecryptLayout:Landroid/view/View;

.field private final vDecryptText:Landroid/widget/TextView;

.field private final vDecryptToken:Landroid/view/View;

.field private final vSignIcon:Landroid/widget/ImageView;

.field private final vSignLayout:Landroid/view/View;

.field private final vSignText:Landroid/widget/TextView;

.field private final vSignToken:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 42
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v3, 0x1

    .line 44
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->setOrientation(I)V

    .line 46
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v0, 0x7f0c00f6

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900b0

    .line 48
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vCertifyLayout:Landroid/view/View;

    const v3, 0x7f0900b5

    .line 49
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vSignLayout:Landroid/view/View;

    const v3, 0x7f0900b1

    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vDecryptLayout:Landroid/view/View;

    const v3, 0x7f0900af

    .line 52
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vCertText:Landroid/widget/TextView;

    const v3, 0x7f0900b9

    .line 53
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vSignText:Landroid/widget/TextView;

    const v3, 0x7f0900b4

    .line 54
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vDecryptText:Landroid/widget/TextView;

    const v3, 0x7f0900ad

    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vCertIcon:Landroid/widget/ImageView;

    const v3, 0x7f0900b7

    .line 57
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vSignIcon:Landroid/widget/ImageView;

    const v3, 0x7f0900b2

    .line 58
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vDecryptIcon:Landroid/widget/ImageView;

    const v3, 0x7f0900ae

    .line 60
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vCertToken:Landroid/view/View;

    const v3, 0x7f0900b8

    .line 61
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vSignToken:Landroid/view/View;

    const v3, 0x7f0900b3

    .line 62
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vDecryptToken:Landroid/view/View;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public setCertifyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/16 v0, 0x8

    if-nez v5, :cond_0

    .line 111
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vCertifyLayout:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 115
    :cond_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vCertIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mColor:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 116
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vCertText:Landroid/widget/TextView;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mCertifyStr:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vCertText:Landroid/widget/TextView;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mTextColor:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vCertToken:Landroid/view/View;

    iget-boolean v5, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mIsDivert:Z

    const/4 v2, 0x0

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vCertifyLayout:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;--->setCertifyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDecryptStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/16 v0, 0x8

    if-nez v5, :cond_0

    .line 136
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vDecryptLayout:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 139
    :cond_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vDecryptIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mColor:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 140
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vDecryptText:Landroid/widget/TextView;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mDecryptStr:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vDecryptText:Landroid/widget/TextView;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mTextColor:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vDecryptToken:Landroid/view/View;

    iget-boolean v5, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mIsDivert:Z

    const/4 v2, 0x0

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vDecryptLayout:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;--->setDecryptStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSignStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/16 v0, 0x8

    if-nez v5, :cond_0

    .line 124
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vSignLayout:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 127
    :cond_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mColor:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 128
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vSignText:Landroid/widget/TextView;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mSignStr:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vSignText:Landroid/widget/TextView;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mTextColor:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vSignToken:Landroid/view/View;

    iget-boolean v5, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;->mIsDivert:Z

    const/4 v2, 0x0

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->vSignLayout:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;--->setSignStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
