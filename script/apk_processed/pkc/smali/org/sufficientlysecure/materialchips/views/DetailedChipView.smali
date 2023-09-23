.class public Lorg/sufficientlysecure/materialchips/views/DetailedChipView;
.super Landroid/widget/LinearLayout;
.source "DetailedChipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mLetterTileProvider:Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;


# instance fields
.field private mBackgroundColor:Landroid/content/res/ColorStateList;

.field private mContentLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mInfoTextView:Landroid/widget/TextView;

.field private mNameTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView;
    .locals 0

    .line 22
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->newInstance(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView;

    move-result-object p0

    return-object p0
.end method

.method private hideOnTouchOutside()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setFocusable(Z)V

    .line 78
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setFocusableInTouchMode(Z)V

    .line 79
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setClickable(Z)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/sufficientlysecure/materialchips/R$layout;->detailed_chip_view:I

    invoke-static {p1, v0, p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 58
    sget v0, Lorg/sufficientlysecure/materialchips/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mContentLayout:Landroid/widget/LinearLayout;

    .line 59
    sget v0, Lorg/sufficientlysecure/materialchips/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mNameTextView:Landroid/widget/TextView;

    .line 60
    sget v0, Lorg/sufficientlysecure/materialchips/R$id;->info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mInfoTextView:Landroid/widget/TextView;

    .line 61
    sget v0, Lorg/sufficientlysecure/materialchips/R$id;->delete_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mDeleteButton:Landroid/widget/ImageButton;

    .line 64
    new-instance p1, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;

    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;-><init>(Landroid/content/Context;)V

    sput-object p1, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mLetterTileProvider:Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;

    const/16 p1, 0x8

    .line 67
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setVisibility(I)V

    .line 69
    invoke-direct {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->hideOnTouchOutside()V

    return-void
.end method

.method private static newInstance(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView;
    .locals 4

    .line 204
    new-instance v0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;

    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->access$100(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->access$200(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->access$200(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setBackGroundcolor(Landroid/content/res/ColorStateList;)V

    .line 211
    :cond_0
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->access$300(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/high16 v2, -0x1000000

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    .line 212
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->access$300(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lorg/sufficientlysecure/materialchips/util/ColorUtil;->isColorDark(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 216
    :cond_2
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 219
    :goto_0
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->access$400(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 220
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->access$400(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setDeleteIconColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 221
    :cond_3
    invoke-virtual {v0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lorg/sufficientlysecure/materialchips/util/ColorUtil;->isColorDark(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setDeleteIconColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 224
    :cond_4
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setDeleteIconColor(Landroid/content/res/ColorStateList;)V

    .line 226
    :goto_1
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->access$500(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setName(Ljava/lang/String;)V

    .line 227
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;->access$600(Lorg/sufficientlysecure/materialchips/views/DetailedChipView$Builder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setInfo(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public alignLeft()V
    .locals 2

    .line 144
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 145
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 146
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public alignRight()V
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 151
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 152
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public fadeIn()V
    .locals 3

    .line 86
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 88
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setVisibility(I)V

    .line 91
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->requestFocus()Z

    return-void
.end method

.method public fadeOut()V
    .locals 3

    .line 98
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 100
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    .line 101
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setVisibility(I)V

    .line 103
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->clearFocus()V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setClickable(Z)V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mBackgroundColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mContext:Landroid/content/Context;

    sget v1, Lorg/sufficientlysecure/materialchips/R$color;->chips_opened_bg:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :goto_0
    return v0
.end method

.method public setBackGroundcolor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 127
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 128
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setDeleteIconColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mInfoTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mInfoTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnDeleteClicked(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 123
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->mInfoTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    const/16 v1, 0x96

    invoke-static {p1, v1}, Lorg/sufficientlysecure/materialchips/util/ColorUtil;->alpha(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
