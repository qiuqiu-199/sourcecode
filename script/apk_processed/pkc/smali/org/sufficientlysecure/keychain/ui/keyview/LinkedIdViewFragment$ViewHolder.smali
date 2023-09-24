.class Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;
.super Ljava/lang/Object;
.source "LinkedIdViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;
    }
.end annotation


# instance fields
.field mLinkedIdHolder:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;

.field private final vButtonConfirm:Landroid/view/View;

.field private final vButtonRetry:Landroid/view/View;

.field private vButtonSwitcher:Landroid/widget/ViewAnimator;

.field private final vButtonVerify:Landroid/view/View;

.field private final vButtonView:Landroid/view/View;

.field private final vItemCertified:Landroid/widget/ViewAnimator;

.field private vKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

.field private final vKeySpinnerContainer:Landroid/view/View;

.field private vLinkedCerts:Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;

.field private final vProgress:Landroid/widget/ViewAnimator;

.field private final vText:Landroid/widget/TextSwitcher;

.field private final vVerifyingContainer:Landroid/widget/ViewAnimator;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 210
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0901d4

    .line 211
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vLinkedCerts:Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;

    const v0, 0x7f0900c9

    .line 212
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    const v0, 0x7f0900c8

    .line 213
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vKeySpinnerContainer:Landroid/view/View;

    const v0, 0x7f090077

    .line 214
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vButtonSwitcher:Landroid/widget/ViewAnimator;

    .line 216
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;-><init>(Landroid/view/View;Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$IdentityClickListener;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->mLinkedIdHolder:Lorg/sufficientlysecure/keychain/ui/adapter/IdentityAdapter$LinkedIdViewHolder;

    const v0, 0x7f0900a8

    .line 218
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vButtonVerify:Landroid/view/View;

    const v0, 0x7f090098

    .line 219
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vButtonRetry:Landroid/view/View;

    const v0, 0x7f09007d

    .line 220
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vButtonConfirm:Landroid/view/View;

    const v0, 0x7f0900a9

    .line 221
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vButtonView:Landroid/view/View;

    const v0, 0x7f0901dd

    .line 223
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vVerifyingContainer:Landroid/widget/ViewAnimator;

    const v0, 0x7f0901d2

    .line 224
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vItemCertified:Landroid/widget/ViewAnimator;

    const v0, 0x7f0901cb

    .line 226
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vProgress:Landroid/widget/ViewAnimator;

    const v0, 0x7f0901cc

    .line 227
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextSwitcher;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vText:Landroid/widget/TextSwitcher;

    .line 229
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    const v0, 0x7f1100d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->setShowNone(Ljava/lang/Integer;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;---><init>(Landroid/view/View;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;
    .locals 0

    .line 193
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 193
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vButtonView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/widget/TextSwitcher;
    .locals 0

    .line 193
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vText:Landroid/widget/TextSwitcher;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 193
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vKeySpinnerContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 193
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vButtonVerify:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 193
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vButtonRetry:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 193
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vButtonConfirm:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;)Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;
    .locals 0

    .line 193
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vLinkedCerts:Lorg/sufficientlysecure/keychain/ui/widget/CertListWidget;

    return-object p0
.end method


# virtual methods
.method setVerifyingState(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;Z)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move/16 p0, p3

    .line 237
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$2;->$SwitchMap$org$sufficientlysecure$keychain$ui$keyview$LinkedIdViewFragment$ViewHolder$VerifyState:[I

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;->ordinal()I

    move-result v6

    aget v6, v0, v6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vProgress:Landroid/widget/ViewAnimator;

    invoke-virtual {v6, v3}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 266
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vText:Landroid/widget/TextSwitcher;

    const p0, 0x7f110950

    invoke-virtual {v5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vKeySpinnerContainer:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vButtonConfirm:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 258
    :pswitch_1
    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->showButton(I)V

    .line 259
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vProgress:Landroid/widget/ViewAnimator;

    invoke-virtual {v6, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 260
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vText:Landroid/widget/TextSwitcher;

    const p0, 0x7f110951

    invoke-virtual {v5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vKeySpinnerContainer:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vProgress:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    if-nez p0, :cond_0

    .line 247
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->showButton(I)V

    .line 248
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->isSingleEntry()Z

    move-result v5

    if-nez v5, :cond_1

    .line 249
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vKeySpinnerContainer:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->showButton(I)V

    .line 253
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vKeySpinnerContainer:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 239
    :pswitch_3
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vProgress:Landroid/widget/ViewAnimator;

    invoke-virtual {v6, v3}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 240
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vText:Landroid/widget/TextSwitcher;

    const p0, 0x7f110952

    invoke-virtual {v5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vKeySpinnerContainer:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;--->setVerifyingState(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder$VerifyState;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method showButton(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 288
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vButtonSwitcher:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    if-ne v0, v2, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vButtonSwitcher:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;--->showButton(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method showVerifyingContainer(Landroid/content/Context;ZZ)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    move/16 p0, p3

    .line 274
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vVerifyingContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    if-ne v0, v8, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vVerifyingContainer:Landroid/widget/ViewAnimator;

    const v1, 0x7f010018

    const v2, 0x7f01001a

    if-eqz v8, :cond_1

    const v3, 0x7f01001a

    goto :goto_0

    :cond_1
    const v3, 0x7f010018

    :goto_0
    invoke-virtual {v0, v7, v3}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 279
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vVerifyingContainer:Landroid/widget/ViewAnimator;

    const v3, 0x7f01001d

    const v4, 0x7f01001f

    if-eqz v8, :cond_2

    const v5, 0x7f01001f

    goto :goto_1

    :cond_2
    const v5, 0x7f01001d

    :goto_1
    invoke-virtual {v0, v7, v5}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 280
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vVerifyingContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v8}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 282
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vItemCertified:Landroid/widget/ViewAnimator;

    if-eqz v8, :cond_3

    const v1, 0x7f01001a

    :cond_3
    invoke-virtual {v0, v7, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 283
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vItemCertified:Landroid/widget/ViewAnimator;

    if-eqz v8, :cond_4

    const v3, 0x7f01001f

    :cond_4
    invoke-virtual {v0, v7, v3}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 284
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;->vItemCertified:Landroid/widget/ViewAnimator;

    if-nez v8, :cond_6

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$ViewHolder;--->showVerifyingContainer(Landroid/content/Context;ZZ)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
