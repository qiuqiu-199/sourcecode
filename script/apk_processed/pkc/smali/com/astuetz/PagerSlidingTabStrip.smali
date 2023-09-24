.class public Lcom/astuetz/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;,
        Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;,
        Lcom/astuetz/PagerSlidingTabStrip$SavedState;,
        Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;,
        Lcom/astuetz/PagerSlidingTabStrip$PageListener;
    }
.end annotation


# static fields
.field private static final ANDROID_ATTRS:[I


# instance fields
.field private isCustomTabs:Z

.field private isExpandTabs:Z

.field private isPaddingMiddle:Z

.field private isTabTextAllCaps:Z

.field private final mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

.field private mCurrentPosition:I

.field private mCurrentPositionOffset:F

.field public mDelegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mDividerColor:I

.field private mDividerPadding:I

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mLastScrollX:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private final mPageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mScrollOffset:I

.field private mTabBackgroundResId:I

.field private mTabCount:I

.field private mTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mTabPadding:I

.field private mTabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

.field private mTabTextColor:Landroid/content/res/ColorStateList;

.field private mTabTextSize:I

.field private mTabTextTypeface:Landroid/graphics/Typeface;

.field private mTabTextTypefaceStyle:I

.field private mTabsContainer:Landroid/widget/LinearLayout;

.field private mUnderlineColor:I

.field private mUnderlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 50
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/astuetz/PagerSlidingTabStrip;->ANDROID_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010036
        0x10100d5
        0x10100d6
        0x10100d8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/astuetz/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, v0}, Lcom/astuetz/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance p3, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;-><init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V

    iput-object p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    .line 67
    new-instance p3, Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    invoke-direct {p3, p0, v0}, Lcom/astuetz/PagerSlidingTabStrip$PageListener;-><init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V

    iput-object p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    .line 68
    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    const/4 p3, 0x0

    .line 74
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    const/4 v1, 0x2

    .line 81
    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    .line 83
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    .line 86
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    .line 87
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    const/16 v2, 0xc

    .line 90
    iput v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    const/16 v2, 0xe

    .line 91
    iput v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    .line 92
    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 94
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    .line 95
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    .line 97
    iput-boolean p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->isExpandTabs:Z

    .line 99
    iput-boolean p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    const/4 v2, 0x1

    .line 100
    iput-boolean v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->isTabTextAllCaps:Z

    .line 102
    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypeface:Landroid/graphics/Typeface;

    .line 103
    iput v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypefaceStyle:I

    .line 106
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mLastScrollX:I

    .line 108
    sget v3, Lcom/astuetz/pagerslidingtabstrip/R$drawable;->psts_background_tab:I

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabBackgroundResId:I

    .line 120
    invoke-virtual {p0, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 121
    invoke-virtual {p0, p3}, Lcom/astuetz/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 122
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 123
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/astuetz/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 126
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    .line 127
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 131
    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    int-to-float v4, v4

    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    .line 132
    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    int-to-float v4, v4

    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    .line 133
    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    int-to-float v4, v4

    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    .line 134
    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    int-to-float v4, v4

    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    .line 135
    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    int-to-float v4, v4

    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    .line 136
    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    int-to-float v4, v4

    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    .line 137
    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    int-to-float v4, v4

    invoke-static {v1, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    .line 139
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    .line 140
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    sget-object v3, Lcom/astuetz/PagerSlidingTabStrip;->ANDROID_ATTRS:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v4, 0x106000c

    .line 145
    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 146
    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    .line 147
    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    .line 148
    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    .line 149
    invoke-virtual {v3, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-lez v2, :cond_0

    move v1, v2

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v3, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 151
    invoke-virtual {v3, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    .line 152
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const-string v1, "sans-serif"

    .line 156
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    const-string v1, "sans-serif-medium"

    .line 158
    iput p3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypefaceStyle:I

    .line 162
    :cond_2
    sget-object v2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 163
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsIndicatorColor:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    .line 164
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsIndicatorHeight:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    .line 165
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsUnderlineColor:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    .line 166
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsUnderlineHeight:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    .line 167
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsDividerColor:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    .line 168
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsDividerWidth:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    .line 169
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsDividerPadding:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    .line 170
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsShouldExpand:I

    iget-boolean v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->isExpandTabs:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->isExpandTabs:Z

    .line 171
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsScrollOffset:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    .line 172
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsPaddingMiddle:I

    iget-boolean v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    .line 173
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabPaddingLeftRight:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    .line 174
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabBackground:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabBackgroundResId:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabBackgroundResId:I

    .line 175
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextSize:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    .line 176
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 177
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextStyle:I

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypefaceStyle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypefaceStyle:I

    .line 178
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextAllCaps:I

    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isTabTextAllCaps:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->isTabTextAllCaps:Z

    .line 179
    sget p2, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextAlpha:I

    const/16 v0, 0x96

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 180
    sget v0, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip_pstsTabTextFontFamily:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_4

    .line 189
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result p1

    .line 190
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 191
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 188
    invoke-static {p2, p1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 185
    invoke-direct {p0, v4, v4, p1}, Lcom/astuetz/PagerSlidingTabStrip;->createColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 198
    :goto_2
    iget p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypefaceStyle:I

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypeface:Landroid/graphics/Typeface;

    .line 201
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->setTabsContainerParentViewPaddings()V

    .line 204
    iget-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->isExpandTabs:Z

    const/4 p2, -0x1

    if-eqz p1, :cond_6

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_3

    :cond_6
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_3
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$1000(Lcom/astuetz/PagerSlidingTabStrip;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->updateSelection(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->select(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->unSelect(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/astuetz/PagerSlidingTabStrip;)Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    return-object p0
.end method

.method static synthetic access$602(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$702(Lcom/astuetz/PagerSlidingTabStrip;F)F
    .locals 0

    .line 47
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    return p1
.end method

.method static synthetic access$800(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    return p0
.end method

.method static synthetic access$900(Lcom/astuetz/PagerSlidingTabStrip;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/astuetz/PagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method private addTab(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 1

    .line 246
    sget v0, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 248
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p2, 0x1

    .line 251
    invoke-virtual {p3, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 252
    new-instance p2, Lcom/astuetz/PagerSlidingTabStrip$1;

    invoke-direct {p2, p0, p1}, Lcom/astuetz/PagerSlidingTabStrip$1;-><init>(Lcom/astuetz/PagerSlidingTabStrip;I)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, p3, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 5

    .line 741
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v3, 0x0

    new-array v4, v3, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    aput p1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private createColorStateList(III)Landroid/content/res/ColorStateList;
    .locals 7

    .line 752
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v4, v5

    aput-object v4, v2, v5

    new-array v4, v3, [I

    const v6, 0x10100a1

    aput v6, v4, v5

    aput-object v4, v2, v3

    new-array v4, v5, [I

    const/4 v6, 0x2

    aput-object v4, v2, v6

    new-array v1, v1, [I

    aput p1, v1, v5

    aput p2, v1, v3

    aput p3, v1, v6

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private scrollToChild(II)V
    .locals 1

    .line 292
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 302
    :cond_1
    iget p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    sub-int/2addr v0, p1

    .line 303
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getIndicatorCoordinates()Landroid/support/v4/util/Pair;

    move-result-object p1

    int-to-float p2, v0

    .line 304
    iget-object v0, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p1, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    add-float/2addr p2, v0

    float-to-int v0, p2

    .line 307
    :cond_2
    iget p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mLastScrollX:I

    if-eq v0, p1, :cond_3

    .line 308
    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mLastScrollX:I

    const/4 p1, 0x0

    .line 309
    invoke-virtual {p0, v0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private select(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 481
    sget v0, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 483
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 485
    :cond_0
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isCustomTabs:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;

    invoke-interface {v0, p1}, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;->tabSelected(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private setTabsContainerParentViewPaddings()V
    .locals 4

    .line 210
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    .line 211
    :goto_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/astuetz/PagerSlidingTabStrip;->setPadding(IIII)V

    return-void
.end method

.method private unSelect(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 471
    sget v0, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 473
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 475
    :cond_0
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isCustomTabs:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;

    invoke-interface {v0, p1}, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;->tabUnselected(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private updateSelection(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 458
    :goto_0
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    if-ge v1, v2, :cond_2

    .line 459
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 462
    invoke-direct {p0, v2}, Lcom/astuetz/PagerSlidingTabStrip;->select(Landroid/view/View;)V

    goto :goto_2

    .line 464
    :cond_1
    invoke-direct {p0, v2}, Lcom/astuetz/PagerSlidingTabStrip;->unSelect(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateTabStyles()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 269
    :goto_0
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    if-ge v1, v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 271
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 272
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 273
    sget v3, Lcom/astuetz/pagerslidingtabstrip/R$id;->psts_tab_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 275
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 276
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypeface:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextTypefaceStyle:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 277
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 280
    iget-boolean v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->isTabTextAllCaps:Z

    if-eqz v3, :cond_1

    .line 281
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    .line 282
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_1

    .line 284
    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .line 645
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    return v0
.end method

.method public getCurrentPositionOffset()F
    .locals 1

    .line 649
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .line 593
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 605
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 597
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 581
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    return v0
.end method

.method public getIndicatorCoordinates()Landroid/support/v4/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    .line 319
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 320
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 321
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    .line 322
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    .line 323
    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    mul-float v4, v4, v3

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, v3

    mul-float v3, v3, v1

    add-float v1, v4, v3

    .line 324
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    mul-float v3, v3, v2

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    sub-float/2addr v5, v2

    mul-float v5, v5, v0

    add-float v0, v3, v5

    .line 327
    :cond_0
    new-instance v2, Landroid/support/v4/util/Pair;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 585
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 609
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isExpandTabs:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .line 629
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabBackgroundResId:I

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 641
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .line 633
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    return v0
.end method

.method public getTabsContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .line 617
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .line 601
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 229
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 231
    :goto_0
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    if-ge v1, v2, :cond_1

    .line 232
    iget-boolean v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->isCustomTabs:Z

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;

    invoke-interface {v2, p0, v1}, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;->getCustomTabView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/astuetz/pagerslidingtabstrip/R$layout;->psts_tab:I

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 238
    :goto_1
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 239
    invoke-direct {p0, v1, v3, v2}, Lcom/astuetz/PagerSlidingTabStrip;->addTab(ILjava/lang/CharSequence;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 509
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 510
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 513
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->setAttached(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 520
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 521
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 524
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->setAttached(Z)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 370
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 371
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getHeight()I

    move-result v0

    .line 377
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    if-lez v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 379
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 380
    :goto_0
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 382
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v5, v3

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v7, v2

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    sub-int v2, v0, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_1
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    if-lez v1, :cond_2

    .line 388
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    int-to-float v3, v1

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    sub-int v1, v0, v1

    int-to-float v4, v1

    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    add-int/2addr v1, v2

    int-to-float v5, v1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 393
    :cond_2
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    if-lez v1, :cond_3

    .line 394
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getIndicatorCoordinates()Landroid/support/v4/util/Pair;

    move-result-object v1

    .line 396
    iget-object v2, v1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    int-to-float v3, v3

    add-float v5, v2, v3

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    sub-int v2, v0, v2

    int-to-float v6, v2

    iget-object v1, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    int-to-float v2, v2

    add-float v7, v1, v2

    int-to-float v8, v0

    iget-object v9, p0, Lcom/astuetz/PagerSlidingTabStrip;->mRectPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 332
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 335
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    iput v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    if-lez v0, :cond_3

    .line 340
    :cond_1
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v0

    goto :goto_0

    .line 344
    :cond_2
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    sub-int/2addr v0, v2

    .line 348
    :goto_0
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 350
    invoke-virtual {p0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setClipToPadding(Z)V

    .line 353
    :cond_3
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingRight:I

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/astuetz/PagerSlidingTabStrip;->setPadding(IIII)V

    .line 354
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    if-nez v0, :cond_4

    .line 355
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPaddingLeft:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_5

    .line 359
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    :cond_5
    const/4 v0, 0x0

    .line 362
    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPositionOffset:F

    .line 363
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    invoke-direct {p0, v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->scrollToChild(II)V

    .line 364
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    invoke-direct {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->updateSelection(I)V

    .line 365
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 531
    check-cast p1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;

    .line 532
    invoke-virtual {p1}, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 533
    iget p1, p1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->currentPosition:I

    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    .line 534
    iget p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 535
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->unSelect(Landroid/view/View;)V

    .line 536
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->select(Landroid/view/View;)V

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 543
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 544
    new-instance v1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;

    invoke-direct {v1, v0}, Lcom/astuetz/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 545
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mCurrentPosition:I

    iput v0, v1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->currentPosition:I

    return-object v1
.end method

.method public setAllCaps(Z)V
    .locals 0

    .line 715
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->isTabTextAllCaps:Z

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 678
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    .line 679
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerColor:I

    .line 684
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 698
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerPadding:I

    .line 699
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    .line 688
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDividerWidth:I

    .line 689
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 653
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    .line 654
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .line 658
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorColor:I

    .line 659
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 663
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mIndicatorHeight:I

    .line 664
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mDelegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnTabReselectedListener(Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 703
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mScrollOffset:I

    .line 704
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    .line 708
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->isExpandTabs:Z

    .line 709
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .line 773
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabBackgroundResId:I

    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .line 777
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabPadding:I

    .line 778
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 728
    invoke-direct {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextColor:Landroid/content/res/ColorStateList;

    .line 737
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .line 724
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(I)V

    return-void
.end method

.method public setTextColorStateListResource(I)V
    .locals 1

    .line 732
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 719
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mTabTextSize:I

    .line 720
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 668
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    .line 669
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .line 673
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineColor:I

    .line 674
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .line 693
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mUnderlineHeight:I

    .line 694
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 215
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 216
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 217
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/astuetz/PagerSlidingTabStrip$CustomTabProvider;

    iput-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->isCustomTabs:Z

    .line 221
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mPageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 222
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 223
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->mAdapterObserver:Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/astuetz/PagerSlidingTabStrip$PagerAdapterObserver;->setAttached(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    return-void
.end method
