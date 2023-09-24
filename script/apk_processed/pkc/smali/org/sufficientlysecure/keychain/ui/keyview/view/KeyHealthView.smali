.class public Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;
.super Landroid/widget/LinearLayout;
.source "KeyHealthView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;
    }
.end annotation


# instance fields
.field private keyHealthClickListener:Landroid/view/View$OnClickListener;

.field private final vExpander:Landroid/widget/ImageView;

.field private final vExpiryLayout:Landroid/view/View;

.field private final vExpiryText:Landroid/widget/TextView;

.field private final vIcon:Landroid/widget/ImageView;

.field private final vInsecureLayout:Landroid/view/View;

.field private final vInsecureProblem:Landroid/widget/TextView;

.field private final vInsecureSolution:Landroid/widget/TextView;

.field private final vKeyStatusDivider:Landroid/view/View;

.field private final vKeyStatusList:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;

.field private final vLayout:Landroid/view/View;

.field private final vSubtitle:Landroid/widget/TextView;

.field private final vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 63
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v3, 0x1

    .line 65
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setOrientation(I)V

    .line 67
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v0, 0x7f0c008e

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901a3

    .line 69
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vLayout:Landroid/view/View;

    const v3, 0x7f0901a6

    .line 70
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vTitle:Landroid/widget/TextView;

    const v3, 0x7f0901a5

    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vSubtitle:Landroid/widget/TextView;

    const v3, 0x7f0901a2

    .line 72
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vIcon:Landroid/widget/ImageView;

    const v3, 0x7f0901a1

    .line 73
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vExpander:Landroid/widget/ImageView;

    .line 75
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vLayout:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0901a0

    .line 77
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vKeyStatusDivider:Landroid/view/View;

    const v3, 0x7f0901a4

    .line 78
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vKeyStatusList:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;

    const v3, 0x7f0901a8

    .line 80
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vInsecureLayout:Landroid/view/View;

    const v3, 0x7f0901a9

    .line 81
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vInsecureProblem:Landroid/widget/TextView;

    const v3, 0x7f0901aa

    .line 82
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vInsecureSolution:Landroid/widget/TextView;

    const v3, 0x7f09019e

    .line 84
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vExpiryLayout:Landroid/view/View;

    const v3, 0x7f09019f

    .line 85
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vExpiryText:Landroid/widget/TextView;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 240
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vTitle:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->access$000(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vSubtitle:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->access$100(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vIcon:Landroid/widget/ImageView;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->access$200(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->access$300(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)I

    move-result v3

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 v3, 0x0

    .line 245
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setVisibility(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;--->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public hideExpandedInfo()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 236
    invoke-virtual {v1, v0, v0, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->showExpandedState(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;--->hideExpandedInfo()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 202
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->keyHealthClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->keyHealthClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 127
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$keyview$loader$SubkeyStatusDao$KeyHealthStatus:[I

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->ordinal()I

    move-result v2

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 156
    :pswitch_0
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->PARTIAL_STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)V

    goto :goto_0

    .line 153
    :pswitch_1
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->SIGN_ONLY:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)V

    goto :goto_0

    .line 150
    :pswitch_2
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)V

    goto :goto_0

    .line 147
    :pswitch_3
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->BROKEN:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)V

    goto :goto_0

    .line 144
    :pswitch_4
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)V

    goto :goto_0

    .line 141
    :pswitch_5
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)V

    goto :goto_0

    .line 138
    :pswitch_6
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->REVOKED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)V

    goto :goto_0

    .line 135
    :pswitch_7
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->DIVERT_PARTIAL:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)V

    goto :goto_0

    .line 132
    :pswitch_8
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->DIVERT:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)V

    goto :goto_0

    .line 129
    :pswitch_9
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->OK:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;--->setKeyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setOnHealthClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 208
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->keyHealthClickListener:Landroid/view/View$OnClickListener;

    .line 209
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;--->setOnHealthClickListener(Landroid/view/View$OnClickListener;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPrimaryExpiryDate(Ljava/util/Date;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    if-nez v6, :cond_0

    .line 191
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vExpiryLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 194
    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vExpiryLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 197
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vExpiryText:Landroid/widget/TextView;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110806

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;--->setPrimaryExpiryDate(Ljava/util/Date;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPrimarySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    if-nez v8, :cond_0

    .line 163
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vInsecureLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 166
    :cond_0
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vInsecureLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    instance-of v0, v8, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 169
    check-cast v8, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;

    .line 170
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vInsecureProblem:Landroid/widget/TextView;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110823

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v8, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;->algorithm:I

    .line 171
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget v8, v8, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;->bitStrength:I

    .line 172
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v2

    .line 170
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vInsecureSolution:Landroid/widget/TextView;

    const v0, 0x7f110824

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 174
    :cond_1
    instance-of v0, v8, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;

    const v3, 0x7f110828

    if-eqz v0, :cond_2

    .line 175
    check-cast v8, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;

    .line 177
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v8, v8, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;->curveOid:Ljava/lang/String;

    invoke-static {v0, v8}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getCurveInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 178
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vInsecureProblem:Landroid/widget/TextView;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110827

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v8, v2, v1

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vInsecureSolution:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 180
    :cond_2
    instance-of v8, v8, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$UnidentifiedKeyProblem;

    if-eqz v8, :cond_3

    .line 181
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vInsecureProblem:Landroid/widget/TextView;

    const v0, 0x7f110825

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vInsecureSolution:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    .line 184
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v0, "all subclasses of KeySecurityProblem must be handled!"

    invoke-direct {v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;--->setPrimarySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setShowExpander(Z)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 213
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 214
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vExpander:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;--->setShowExpander(Z)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showExpandedState(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    .line 220
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vKeyStatusList:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->setVisibility(I)V

    .line 221
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vKeyStatusDivider:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vExpander:Landroid/widget/ImageView;

    const v4, 0x7f0800b1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vKeyStatusList:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->setVisibility(I)V

    .line 225
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vKeyStatusDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vExpander:Landroid/widget/ImageView;

    const v1, 0x7f0800b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vKeyStatusList:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->setCertifyStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;)V

    .line 229
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vKeyStatusList:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->setSignStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;)V

    .line 230
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;->vKeyStatusList:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;

    invoke-virtual {v3, p0}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList;->setDecryptStatus(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;)V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;--->showExpandedState(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyStatusList$KeyDisplayStatus;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
