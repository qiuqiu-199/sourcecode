.class public Lorg/sufficientlysecure/materialchips/ChipView;
.super Landroid/widget/RelativeLayout;
.source "ChipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/materialchips/ChipView$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundColor:Landroid/content/res/ColorStateList;

.field private mChip:Lorg/sufficientlysecure/materialchips/model/ChipInterface;

.field private mContentLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDeletable:Z

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mDeleteIcon:Landroid/graphics/drawable/Drawable;

.field private mDeleteIconColor:Landroid/content/res/ColorStateList;

.field private mLabel:Ljava/lang/String;

.field private mLabelColor:Landroid/content/res/ColorStateList;

.field private mLabelTextView:Landroid/widget/TextView;

.field private mLetterTileProvider:Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lorg/sufficientlysecure/materialchips/ChipView;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/materialchips/ChipView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeletable:Z

    .line 46
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 47
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/materialchips/ChipView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Lorg/sufficientlysecure/materialchips/ChipView;
    .locals 0

    .line 22
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/ChipView;->newInstance(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Lorg/sufficientlysecure/materialchips/ChipView;

    move-result-object p0

    return-object p0
.end method

.method private inflateWithAttributes()V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/ChipView;->setLabel(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabelColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabelColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/ChipView;->setLabelColor(Landroid/content/res/ColorStateList;)V

    .line 109
    :cond_0
    iget-boolean v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeletable:Z

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/ChipView;->setDeletable(Z)V

    .line 112
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mBackgroundColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/ChipView;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/ChipView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/sufficientlysecure/materialchips/R$layout;->chip_view:I

    invoke-static {v0, v1, p0}, Lorg/sufficientlysecure/materialchips/ChipView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    sget v1, Lorg/sufficientlysecure/materialchips/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mContentLayout:Landroid/widget/LinearLayout;

    .line 66
    sget v1, Lorg/sufficientlysecure/materialchips/R$id;->label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabelTextView:Landroid/widget/TextView;

    .line 67
    sget v1, Lorg/sufficientlysecure/materialchips/R$id;->delete_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteButton:Landroid/widget/ImageButton;

    .line 70
    new-instance v0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLetterTileProvider:Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;

    if-eqz p1, :cond_1

    .line 74
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/materialchips/R$styleable;->ChipView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 81
    :try_start_0
    sget v0, Lorg/sufficientlysecure/materialchips/R$styleable;->ChipView_label:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabel:Ljava/lang/String;

    .line 82
    sget v0, Lorg/sufficientlysecure/materialchips/R$styleable;->ChipView_labelColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabelColor:Landroid/content/res/ColorStateList;

    .line 83
    sget v0, Lorg/sufficientlysecure/materialchips/R$styleable;->ChipView_deletable:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeletable:Z

    .line 84
    sget v0, Lorg/sufficientlysecure/materialchips/R$styleable;->ChipView_deleteIconColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteIconColor:Landroid/content/res/ColorStateList;

    .line 85
    sget v0, Lorg/sufficientlysecure/materialchips/R$styleable;->ChipView_deleteIcon:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteIcon:Landroid/graphics/drawable/Drawable;

    .line 89
    :cond_0
    sget v0, Lorg/sufficientlysecure/materialchips/R$styleable;->ChipView_backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mBackgroundColor:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    throw v0

    .line 96
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/sufficientlysecure/materialchips/ChipView;->inflateWithAttributes()V

    return-void
.end method

.method private static newInstance(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Lorg/sufficientlysecure/materialchips/ChipView;
    .locals 2

    .line 387
    new-instance v0, Lorg/sufficientlysecure/materialchips/ChipView;

    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->access$100(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/materialchips/ChipView;-><init>(Landroid/content/Context;)V

    .line 388
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->access$200(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabel:Ljava/lang/String;

    .line 389
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->access$300(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabelColor:Landroid/content/res/ColorStateList;

    .line 390
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->access$400(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeletable:Z

    .line 391
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->access$500(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteIcon:Landroid/graphics/drawable/Drawable;

    .line 392
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->access$600(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteIconColor:Landroid/content/res/ColorStateList;

    .line 393
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->access$700(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/materialchips/ChipView;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 394
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/ChipView$Builder;->access$800(Lorg/sufficientlysecure/materialchips/ChipView$Builder;)Lorg/sufficientlysecure/materialchips/model/ChipInterface;

    move-result-object p0

    iput-object p0, v0, Lorg/sufficientlysecure/materialchips/ChipView;->mChip:Lorg/sufficientlysecure/materialchips/model/ChipInterface;

    .line 395
    invoke-direct {v0}, Lorg/sufficientlysecure/materialchips/ChipView;->inflateWithAttributes()V

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public inflate(Lorg/sufficientlysecure/materialchips/model/ChipInterface;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mChip:Lorg/sufficientlysecure/materialchips/model/ChipInterface;

    .line 119
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mChip:Lorg/sufficientlysecure/materialchips/model/ChipInterface;

    invoke-interface {p1}, Lorg/sufficientlysecure/materialchips/model/ChipInterface;->getLabel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabel:Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Lorg/sufficientlysecure/materialchips/ChipView;->inflateWithAttributes()V

    return-void
.end method

.method public setChip(Lorg/sufficientlysecure/materialchips/model/ChipInterface;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mChip:Lorg/sufficientlysecure/materialchips/model/ChipInterface;

    return-void
.end method

.method public setChipBackgroundColor(I)V
    .locals 2

    .line 297
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 298
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mBackgroundColor:Landroid/content/res/ColorStateList;

    .line 288
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/materialchips/ChipView;->setChipBackgroundColor(I)V

    return-void
.end method

.method public setDeletable(Z)V
    .locals 3

    .line 228
    iput-boolean p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeletable:Z

    .line 229
    iget-boolean p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeletable:Z

    const/16 v0, 0xc

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 231
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabelTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v2

    invoke-static {v0}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v0

    invoke-virtual {p1, v2, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabelTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 241
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 242
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :cond_1
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteIconColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 244
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteIconColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDeleteIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 277
    iput-boolean p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeletable:Z

    .line 278
    invoke-direct {p0}, Lorg/sufficientlysecure/materialchips/ChipView;->inflateWithAttributes()V

    return-void
.end method

.method public setDeleteIconColor(I)V
    .locals 0

    .line 265
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteIconColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 266
    iput-boolean p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeletable:Z

    .line 267
    invoke-direct {p0}, Lorg/sufficientlysecure/materialchips/ChipView;->inflateWithAttributes()V

    return-void
.end method

.method public setDeleteIconColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteIconColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeletable:Z

    .line 256
    invoke-direct {p0}, Lorg/sufficientlysecure/materialchips/ChipView;->inflateWithAttributes()V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 139
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabel:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLabelColor(I)V
    .locals 1

    .line 159
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabelColor:Landroid/content/res/ColorStateList;

    .line 160
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setLabelColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 149
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabelColor:Landroid/content/res/ColorStateList;

    .line 150
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setOnChipClicked(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDeleteClicked(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
