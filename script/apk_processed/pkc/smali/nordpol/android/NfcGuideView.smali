.class public Lnordpol/android/NfcGuideView;
.super Landroid/widget/RelativeLayout;
.source "NfcGuideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnordpol/android/NfcGuideView$NfcGuideViewStatus;
    }
.end annotation


# instance fields
.field private guideItemsStartDistance:I

.field private mNfcGuideHand:Landroid/widget/ImageView;

.field private mNfcGuideHandWidth:I

.field private mNfcGuidePhone:Landroid/widget/ImageView;

.field private mNfcGuidePhoneWidth:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRootView:Landroid/view/View;

.field private mRootViewHeight:I

.field private mRootViewWidth:I

.field private mStatusNegative:Landroid/widget/ImageView;

.field private mStatusPositive:Landroid/widget/ImageView;

.field private nfcGuidePhoneHeight:I

.field private nfcGuideViewTransactionItemIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x32

    .line 56
    iput v0, p0, Lnordpol/android/NfcGuideView;->guideItemsStartDistance:I

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lnordpol/android/NfcGuideView;->mNfcGuidePhoneWidth:I

    .line 63
    iput v0, p0, Lnordpol/android/NfcGuideView;->nfcGuidePhoneHeight:I

    .line 64
    iput v0, p0, Lnordpol/android/NfcGuideView;->mNfcGuideHandWidth:I

    .line 65
    iput v0, p0, Lnordpol/android/NfcGuideView;->mRootViewWidth:I

    .line 66
    iput v0, p0, Lnordpol/android/NfcGuideView;->mRootViewHeight:I

    .line 86
    invoke-virtual {p0}, Lnordpol/android/NfcGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnordpol/android/R$integer;->GUIDE_ITEMS_START_DISTANCE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lnordpol/android/NfcGuideView;->guideItemsStartDistance:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lnordpol/android/R$styleable;->NfcGuideView:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 97
    :try_start_0
    sget v1, Lnordpol/android/R$styleable;->NfcGuideView_nfc_device:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 98
    sget v2, Lnordpol/android/R$styleable;->NfcGuideView_transaction_item_icon:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const-string p2, "layout_inflater"

    .line 103
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 104
    sget p2, Lnordpol/android/R$layout;->nfc_guide_view:I

    const/4 v3, 0x1

    invoke-virtual {p1, p2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lnordpol/android/NfcGuideView;->mRootView:Landroid/view/View;

    .line 106
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->mRootView:Landroid/view/View;

    sget p2, Lnordpol/android/R$id;->nfc_guide_view_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lnordpol/android/NfcGuideView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 107
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->mRootView:Landroid/view/View;

    sget p2, Lnordpol/android/R$id;->nfc_guide_view_status_positive:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnordpol/android/NfcGuideView;->mStatusPositive:Landroid/widget/ImageView;

    .line 108
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->mRootView:Landroid/view/View;

    sget p2, Lnordpol/android/R$id;->nfc_guide_view_status_negative:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnordpol/android/NfcGuideView;->mStatusNegative:Landroid/widget/ImageView;

    .line 109
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->mRootView:Landroid/view/View;

    sget p2, Lnordpol/android/R$id;->nfc_guide_view_phone:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnordpol/android/NfcGuideView;->mNfcGuidePhone:Landroid/widget/ImageView;

    .line 110
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->mRootView:Landroid/view/View;

    sget p2, Lnordpol/android/R$id;->nfc_guide_view_hand:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnordpol/android/NfcGuideView;->mNfcGuideHand:Landroid/widget/ImageView;

    .line 111
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->mRootView:Landroid/view/View;

    sget p2, Lnordpol/android/R$id;->nfc_guide_view_transaction_item_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnordpol/android/NfcGuideView;->nfcGuideViewTransactionItemIcon:Landroid/widget/ImageView;

    .line 113
    invoke-static {v1}, Lnordpol/android/NfcDeviceDesign;->getNfcDeviceDesign(I)Lnordpol/android/NfcDeviceDesign;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnordpol/android/NfcGuideView;->setNfcDeviceDesign(Lnordpol/android/NfcDeviceDesign;)V

    if-eqz v2, :cond_0

    .line 116
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->nfcGuideViewTransactionItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->nfcGuideViewTransactionItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->nfcGuideViewTransactionItemIcon:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    :goto_0
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lnordpol/android/NfcGuideView$1;

    invoke-direct {p2, p0}, Lnordpol/android/NfcGuideView$1;-><init>(Lnordpol/android/NfcGuideView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 137
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->mNfcGuidePhone:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lnordpol/android/NfcGuideView$2;

    invoke-direct {p2, p0}, Lnordpol/android/NfcGuideView$2;-><init>(Lnordpol/android/NfcGuideView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 152
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->mNfcGuideHand:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lnordpol/android/NfcGuideView$3;

    invoke-direct {p2, p0}, Lnordpol/android/NfcGuideView$3;-><init>(Lnordpol/android/NfcGuideView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 100
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method static synthetic access$000(Lnordpol/android/NfcGuideView;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lnordpol/android/NfcGuideView;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lnordpol/android/NfcGuideView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lnordpol/android/NfcGuideView;->mRootViewWidth:I

    return p1
.end method

.method static synthetic access$202(Lnordpol/android/NfcGuideView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lnordpol/android/NfcGuideView;->mRootViewHeight:I

    return p1
.end method

.method static synthetic access$300(Lnordpol/android/NfcGuideView;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->nfcGuideStartPositions()V

    return-void
.end method

.method static synthetic access$400(Lnordpol/android/NfcGuideView;)Landroid/widget/ImageView;
    .locals 0

    .line 54
    iget-object p0, p0, Lnordpol/android/NfcGuideView;->mNfcGuidePhone:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$502(Lnordpol/android/NfcGuideView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lnordpol/android/NfcGuideView;->mNfcGuidePhoneWidth:I

    return p1
.end method

.method static synthetic access$602(Lnordpol/android/NfcGuideView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lnordpol/android/NfcGuideView;->nfcGuidePhoneHeight:I

    return p1
.end method

.method static synthetic access$700(Lnordpol/android/NfcGuideView;)Landroid/widget/ImageView;
    .locals 0

    .line 54
    iget-object p0, p0, Lnordpol/android/NfcGuideView;->mNfcGuideHand:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$802(Lnordpol/android/NfcGuideView;I)I
    .locals 0

    .line 54
    iput p1, p0, Lnordpol/android/NfcGuideView;->mNfcGuideHandWidth:I

    return p1
.end method

.method private blowUp()V
    .locals 6

    .line 294
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mNfcGuideHand:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 301
    iget v0, p0, Lnordpol/android/NfcGuideView;->mRootViewWidth:I

    iget v4, p0, Lnordpol/android/NfcGuideView;->mNfcGuidePhoneWidth:I

    sub-int/2addr v0, v4

    .line 302
    iget-object v4, p0, Lnordpol/android/NfcGuideView;->mNfcGuidePhone:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 309
    iget-object v4, p0, Lnordpol/android/NfcGuideView;->nfcGuideViewTransactionItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private getDeviceDrawable(Lnordpol/android/NfcDeviceDesign;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 377
    sget-object v0, Lnordpol/android/NfcGuideView$4;->$SwitchMap$nordpol$android$NfcDeviceDesign:[I

    invoke-virtual {p1}, Lnordpol/android/NfcDeviceDesign;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 386
    sget p1, Lnordpol/android/R$drawable;->nfc_guide_view_hand_holding_card_ruby:I

    invoke-direct {p0, p1}, Lnordpol/android/NfcGuideView;->getResDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 383
    :pswitch_0
    sget p1, Lnordpol/android/R$drawable;->nfc_guide_view_hand_holding_usb_black_fidesmo:I

    invoke-direct {p0, p1}, Lnordpol/android/NfcGuideView;->getResDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 381
    :pswitch_1
    sget p1, Lnordpol/android/R$drawable;->nfc_guide_view_hand_holding_usb_black:I

    invoke-direct {p0, p1}, Lnordpol/android/NfcGuideView;->getResDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 379
    :pswitch_2
    sget p1, Lnordpol/android/R$drawable;->nfc_guide_view_hand_holding_card_black:I

    invoke-direct {p0, p1}, Lnordpol/android/NfcGuideView;->getResDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getHandXStart()I
    .locals 2

    .line 199
    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->getViewCenter()I

    move-result v0

    iget v1, p0, Lnordpol/android/NfcGuideView;->mNfcGuideHandWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnordpol/android/NfcGuideView;->guideItemsStartDistance:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getHandXTransferring()I
    .locals 3

    .line 215
    iget v0, p0, Lnordpol/android/NfcGuideView;->guideItemsStartDistance:I

    iget v1, p0, Lnordpol/android/NfcGuideView;->guideItemsStartDistance:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 216
    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->getViewCenter()I

    move-result v1

    iget v2, p0, Lnordpol/android/NfcGuideView;->mNfcGuideHandWidth:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPhoneXStart()I
    .locals 3

    .line 203
    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->getViewCenter()I

    move-result v0

    iget v1, p0, Lnordpol/android/NfcGuideView;->guideItemsStartDistance:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnordpol/android/NfcGuideView;->mRootViewWidth:I

    iget v2, p0, Lnordpol/android/NfcGuideView;->mNfcGuidePhoneWidth:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getPhoneXTransferring()I
    .locals 3

    .line 220
    iget v0, p0, Lnordpol/android/NfcGuideView;->guideItemsStartDistance:I

    iget v1, p0, Lnordpol/android/NfcGuideView;->guideItemsStartDistance:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 221
    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->getViewCenter()I

    move-result v1

    sub-int/2addr v1, v0

    iget v0, p0, Lnordpol/android/NfcGuideView;->mRootViewWidth:I

    iget v2, p0, Lnordpol/android/NfcGuideView;->mNfcGuidePhoneWidth:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getPixelsFromDp(F)I
    .locals 1

    .line 363
    invoke-virtual {p0}, Lnordpol/android/NfcGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private getResDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 356
    invoke-virtual {p0}, Lnordpol/android/NfcGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 358
    :cond_0
    invoke-virtual {p0}, Lnordpol/android/NfcGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getTransactionItemIconXStart()I
    .locals 2

    .line 207
    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->getPhoneXStart()I

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-direct {p0, v1}, Lnordpol/android/NfcGuideView;->getPixelsFromDp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTransactionItemIconXTransferring()I
    .locals 2

    .line 225
    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->getPhoneXTransferring()I

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-direct {p0, v1}, Lnordpol/android/NfcGuideView;->getPixelsFromDp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getViewCenter()I
    .locals 1

    .line 211
    iget v0, p0, Lnordpol/android/NfcGuideView;->mRootViewWidth:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private nfcGuideDone()V
    .locals 4

    .line 260
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 265
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mStatusPositive:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 269
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mStatusNegative:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 273
    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->blowUp()V

    return-void
.end method

.method private nfcGuideFailed()V
    .locals 4

    .line 277
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 282
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mStatusPositive:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 285
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mStatusNegative:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 290
    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->blowUp()V

    return-void
.end method

.method private nfcGuideStartPositions()V
    .locals 3

    .line 168
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 171
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mStatusPositive:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 174
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mStatusNegative:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 178
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mNfcGuideHand:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->getHandXStart()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 183
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mNfcGuidePhone:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->getPhoneXStart()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 189
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->nfcGuideViewTransactionItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->getTransactionItemIconXStart()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 195
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->nfcGuideViewTransactionItemIcon:Landroid/widget/ImageView;

    iget v1, p0, Lnordpol/android/NfcGuideView;->mRootViewHeight:I

    div-int/lit8 v1, v1, 0x7

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method private nfcGuideTransferring()V
    .locals 4

    .line 229
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 233
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mStatusPositive:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 236
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mStatusNegative:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 240
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mNfcGuideHand:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->getHandXTransferring()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 246
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mNfcGuidePhone:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->getPhoneXTransferring()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 252
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->nfcGuideViewTransactionItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->getTransactionItemIconXTransferring()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public setCurrentStatus(Lnordpol/android/NfcGuideView$NfcGuideViewStatus;)V
    .locals 1

    .line 323
    sget-object v0, Lnordpol/android/NfcGuideView$4;->$SwitchMap$nordpol$android$NfcGuideView$NfcGuideViewStatus:[I

    invoke-virtual {p1}, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 334
    :pswitch_0
    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->nfcGuideFailed()V

    goto :goto_0

    .line 331
    :pswitch_1
    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->nfcGuideDone()V

    goto :goto_0

    .line 328
    :pswitch_2
    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->nfcGuideTransferring()V

    goto :goto_0

    .line 325
    :pswitch_3
    invoke-direct {p0}, Lnordpol/android/NfcGuideView;->nfcGuideStartPositions()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setNfcDeviceDesign(Lnordpol/android/NfcDeviceDesign;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->mNfcGuideHand:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lnordpol/android/NfcGuideView;->getDeviceDrawable(Lnordpol/android/NfcDeviceDesign;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTransactionItemIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 346
    iget-object v0, p0, Lnordpol/android/NfcGuideView;->nfcGuideViewTransactionItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->nfcGuideViewTransactionItemIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lnordpol/android/NfcGuideView;->nfcGuideViewTransactionItemIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
