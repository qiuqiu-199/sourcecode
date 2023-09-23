.class public Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
.super Landroid/view/ViewGroup;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;
    }
.end annotation


# static fields
.field private static sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

.field private static sCollapseInterpolator:Landroid/view/animation/Interpolator;

.field private static sExpandInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

.field private mAddButtonColorNormal:I

.field private mAddButtonColorPressed:I

.field private mAddButtonPlusColor:I

.field private mAddButtonSize:I

.field private mAddButtonStrokeVisible:Z

.field private mButtonSpacing:I

.field private mButtonsCount:I

.field private mCollapseAnimation:Landroid/animation/AnimatorSet;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mExpandDirection:I

.field private mExpanded:Z

.field private mLabelsMargin:I

.field private mLabelsPosition:I

.field private mLabelsStyle:I

.field private mLabelsVerticalOffset:I

.field private mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

.field private mMaxButtonHeight:I

.field private mMaxButtonWidth:I

.field private mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

.field private mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 426
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    .line 427
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 428
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 54
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p3

    iput-object p3, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 54
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p3

    iput-object p3, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    return p0
.end method

.method static synthetic access$1000()Landroid/view/animation/Interpolator;
    .locals 1

    .line 27
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/view/animation/Interpolator;
    .locals 1

    .line 27
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    return p0
.end method

.method static synthetic access$200(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    return p0
.end method

.method static synthetic access$300(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonStrokeVisible:Z

    return p0
.end method

.method static synthetic access$402(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$600(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$900()Landroid/view/animation/Interpolator;
    .locals 1

    .line 27
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private adjustForOvershoot(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0xc

    .line 273
    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method private collapse(Z)V
    .locals 3

    .line 540
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 541
    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 542
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v1, v0}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 543
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 544
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 545
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 547
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz p1, :cond_1

    .line 548
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    invoke-interface {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuCollapsed()V

    :cond_1
    return-void
.end method

.method private createAddButton(Landroid/content/Context;)V
    .locals 1

    .line 148
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;

    invoke-direct {v0, p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    .line 178
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    sget v0, Lcom/getbase/floatingactionbutton/R$id;->fab_expand_menu_button:I

    invoke-virtual {p1, v0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setId(I)V

    .line 179
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonSize:I

    invoke-virtual {p1, v0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setSize(I)V

    .line 180
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;

    invoke-direct {v0, p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)V

    invoke-virtual {p1, v0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    return-void
.end method

.method private createLabels()V
    .locals 6

    .line 513
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 515
    :goto_0
    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    if-ge v1, v2, :cond_2

    .line 516
    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 517
    invoke-virtual {v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 519
    iget-object v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v2, v4, :cond_1

    if-eqz v3, :cond_1

    sget v3, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    .line 520
    invoke-virtual {v2, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 522
    :cond_0
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 523
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 524
    invoke-virtual {v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {p0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;)V

    .line 527
    sget v4, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v2, v4, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private expandsHorizontally()Z
    .locals 2

    .line 117
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getColor(I)I
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_actions_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    .line 88
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_labels_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    .line 89
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    .line 91
    new-instance v0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-direct {v0, p0}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    .line 92
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 94
    sget-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 95
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonPlusIconColor:I

    const v2, 0x106000b

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    .line 96
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorNormal:I

    const v2, 0x1060013

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    .line 97
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorPressed:I

    const v2, 0x1060012

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    .line 98
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonSize:I

    .line 99
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonStrokeVisible:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonStrokeVisible:Z

    .line 100
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_expandDirection:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    .line 101
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelStyle:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    .line 102
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelsPosition:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    .line 103
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 106
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Action labels in horizontal expand orientation is not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 423
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    return p1
.end method

.method public collapse()V
    .locals 1

    const/4 v0, 0x0

    .line 532
    invoke-direct {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse(Z)V

    return-void
.end method

.method public expand()V
    .locals 2

    .line 562
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 563
    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 564
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v1, v0}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 565
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 566
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 568
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    invoke-interface {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuExpanded()V

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 408
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 413
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 418
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 502
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 504
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->bringChildToFront(Landroid/view/View;)V

    .line 505
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 507
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createLabels()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 20

    move-object/from16 v0, p0

    .line 278
    iget v5, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/16 v6, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_16

    .line 366
    :pswitch_0
    iget v5, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    if-ne v5, v11, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    sub-int v1, p4, p2

    .line 368
    iget-object v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v3}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int v2, p5, p3

    .line 370
    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    iget-object v4, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v4}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v11

    add-int/2addr v2, v3

    .line 371
    iget-object v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    iget-object v4, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v4}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v12, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v12}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v3, v1, v2, v4, v12}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    if-eqz v5, :cond_2

    .line 373
    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int v3, v1, v3

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    .line 375
    invoke-virtual {v3}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget v4, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v3, v4

    .line 377
    :goto_2
    iget v4, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    sub-int/2addr v4, v10

    :goto_3
    if-ltz v4, :cond_1b

    .line 378
    invoke-virtual {v0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 380
    iget-object v13, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v12, v13, :cond_8

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v6, :cond_3

    goto :goto_6

    :cond_3
    if-eqz v5, :cond_4

    .line 382
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v3, v13

    .line 383
    :cond_4
    iget-object v13, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v13}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/2addr v13, v11

    add-int/2addr v13, v2

    .line 384
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v3

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v12, v3, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    sub-int v13, v1, v3

    int-to-float v13, v13

    .line 389
    iget-boolean v14, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v14, :cond_5

    const/4 v14, 0x0

    goto :goto_4

    :cond_5
    move v14, v13

    :goto_4
    invoke-virtual {v12, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 390
    iget-boolean v14, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v14, :cond_6

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v12, v14}, Landroid/view/View;->setAlpha(F)V

    .line 392
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 393
    invoke-static {v14}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    new-array v7, v11, [F

    aput v8, v7, v9

    aput v13, v7, v10

    invoke-virtual {v15, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 394
    invoke-static {v14}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v15, v11, [F

    aput v13, v15, v9

    aput v8, v15, v10

    invoke-virtual {v7, v15}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 395
    invoke-virtual {v14, v12}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    if-eqz v5, :cond_7

    .line 397
    iget v7, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int/2addr v3, v7

    goto :goto_6

    .line 399
    :cond_7
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v3, v7

    iget v7, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v3, v7

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 281
    :pswitch_1
    iget v5, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    if-nez v5, :cond_9

    const/4 v7, 0x1

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    :goto_7
    if-eqz p1, :cond_a

    .line 284
    iget-object v5, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v5}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->clearTouchDelegates()V

    :cond_a
    if-eqz v7, :cond_b

    sub-int v2, p5, p3

    .line 287
    iget-object v4, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v4}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v2, v4

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    .line 289
    :goto_8
    iget v4, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v4, :cond_c

    sub-int v1, p4, p2

    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/2addr v3, v11

    sub-int/2addr v1, v3

    goto :goto_9

    :cond_c
    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/2addr v1, v11

    .line 292
    :goto_9
    iget-object v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v3}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v11

    sub-int v3, v1, v3

    .line 293
    iget-object v4, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    iget-object v5, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v5}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v12, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v12}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v4, v3, v2, v5, v12}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    .line 295
    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/2addr v3, v11

    iget v4, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    add-int/2addr v3, v4

    .line 296
    iget v4, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v4, :cond_d

    sub-int v3, v1, v3

    goto :goto_a

    :cond_d
    add-int/2addr v3, v1

    :goto_a
    if-eqz v7, :cond_e

    .line 300
    iget v4, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int v4, v2, v4

    goto :goto_b

    :cond_e
    iget-object v4, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    .line 302
    invoke-virtual {v4}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    iget v5, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v4, v5

    .line 304
    :goto_b
    iget v5, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    sub-int/2addr v5, v10

    :goto_c
    if-ltz v5, :cond_1b

    .line 305
    invoke-virtual {v0, v5}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 307
    iget-object v13, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v12, v13, :cond_1a

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v6, :cond_f

    goto/16 :goto_14

    .line 309
    :cond_f
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int/2addr v13, v11

    sub-int v13, v1, v13

    if-eqz v7, :cond_10

    .line 310
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v4, v14

    .line 311
    :cond_10
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v12, v13, v4, v14, v15}, Landroid/view/View;->layout(IIII)V

    sub-int v14, v2, v4

    int-to-float v14, v14

    .line 316
    iget-boolean v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v15, :cond_11

    const/4 v15, 0x0

    goto :goto_d

    :cond_11
    move v15, v14

    :goto_d
    invoke-virtual {v12, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 317
    iget-boolean v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v15, :cond_12

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_12
    const/4 v15, 0x0

    :goto_e
    invoke-virtual {v12, v15}, Landroid/view/View;->setAlpha(F)V

    .line 319
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 320
    invoke-static {v15}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move/from16 v16, v1

    new-array v1, v11, [F

    aput v8, v1, v9

    aput v14, v1, v10

    invoke-virtual {v6, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 321
    invoke-static {v15}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v6, v11, [F

    aput v14, v6, v9

    aput v8, v6, v10

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 322
    invoke-virtual {v15, v12}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 324
    sget v1, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v12, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_18

    .line 326
    iget v6, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v6, :cond_13

    .line 327
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v3, v6

    goto :goto_f

    .line 328
    :cond_13
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    .line 330
    :goto_f
    iget v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v15, :cond_14

    move v15, v6

    goto :goto_10

    :cond_14
    move v15, v3

    .line 334
    :goto_10
    iget v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v10, :cond_15

    move v6, v3

    .line 338
    :cond_15
    iget v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    sub-int v10, v4, v10

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    add-int v10, v10, v17

    .line 340
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v8, v10, v17

    invoke-virtual {v1, v15, v10, v6, v8}, Landroid/view/View;->layout(IIII)V

    .line 342
    new-instance v8, Landroid/graphics/Rect;

    .line 343
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    div-int/2addr v15, v11

    sub-int v15, v4, v15

    .line 345
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v13, v13, v17

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 346
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v4

    iget v9, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    div-int/2addr v9, v11

    add-int/2addr v13, v9

    invoke-direct {v8, v10, v15, v6, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 347
    iget-object v6, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    new-instance v9, Landroid/view/TouchDelegate;

    invoke-direct {v9, v8, v12}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v6, v9}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->addTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 349
    iget-boolean v6, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v6, :cond_16

    const/4 v6, 0x0

    goto :goto_11

    :cond_16
    move v6, v14

    :goto_11
    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 350
    iget-boolean v6, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v6, :cond_17

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_12

    :cond_17
    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 352
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 353
    invoke-static {v6}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v9, v11, [F

    const/4 v10, 0x0

    const/4 v13, 0x0

    aput v13, v9, v10

    const/4 v15, 0x1

    aput v14, v9, v15

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 354
    invoke-static {v6}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v9, v11, [F

    aput v14, v9, v10

    aput v13, v9, v15

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 355
    invoke-virtual {v6, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    goto :goto_13

    :cond_18
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_13
    if-eqz v7, :cond_19

    .line 358
    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int/2addr v4, v1

    goto :goto_15

    .line 360
    :cond_19
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v4, v1

    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v4, v1

    goto :goto_15

    :cond_1a
    :goto_14
    move/from16 v16, v1

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    :goto_15
    add-int/lit8 v5, v5, -0x1

    move/from16 v1, v16

    const/16 v6, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_c

    :cond_1b
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->measureChildren(II)V

    const/4 p1, 0x0

    .line 218
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 219
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 222
    :goto_0
    iget v3, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    if-ge p2, v3, :cond_2

    .line 223
    invoke-virtual {p0, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 229
    :cond_0
    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 237
    :pswitch_0
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 238
    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    goto :goto_1

    .line 232
    :pswitch_1
    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 233
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 242
    :goto_1
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v4

    if-nez v4, :cond_1

    .line 243
    sget v4, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 245
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result p2

    if-nez p2, :cond_4

    .line 251
    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    if-lez v0, :cond_3

    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    add-int/2addr p1, v0

    :cond_3
    add-int v2, p2, p1

    goto :goto_3

    .line 253
    :cond_4
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    .line 256
    :goto_3
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    packed-switch p1, :pswitch_data_1

    goto :goto_4

    .line 264
    :pswitch_2
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 p2, p2, -0x1

    mul-int p1, p1, p2

    add-int/2addr v2, p1

    .line 265
    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v2

    goto :goto_4

    .line 259
    :pswitch_3
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 p2, p2, -0x1

    mul-int p1, p1, p2

    add-int/2addr v1, p1

    .line 260
    invoke-direct {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v1

    .line 269
    :goto_4
    invoke-virtual {p0, v2, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setMeasuredDimension(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 596
    instance-of v0, p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    if-eqz v0, :cond_2

    .line 597
    check-cast p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    .line 598
    iget-boolean v0, p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 599
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    iget-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 601
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    iget-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x43070000    # 135.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;->setRotation(F)V

    .line 605
    :cond_1
    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1

    .line 607
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 587
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 588
    new-instance v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    invoke-direct {v1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 589
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    iput-boolean v0, v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 580
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 582
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setEnabled(Z)V

    return-void
.end method

.method public setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 554
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    goto :goto_0

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expand()V

    :goto_0
    return-void
.end method
