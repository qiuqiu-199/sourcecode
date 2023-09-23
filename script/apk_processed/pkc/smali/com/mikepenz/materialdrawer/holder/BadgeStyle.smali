.class public Lcom/mikepenz/materialdrawer/holder/BadgeStyle;
.super Ljava/lang/Object;
.source "BadgeStyle.java"


# instance fields
.field private mBadgeBackground:Landroid/graphics/drawable/Drawable;

.field private mColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field private mColorPressed:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

.field private mCorners:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mGradientDrawable:I

.field private mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget v0, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_badge:I

    iput v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mGradientDrawable:I

    const/4 v0, 0x2

    .line 25
    invoke-static {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    const/4 v0, 0x3

    .line 26
    invoke-static {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    const/16 v0, 0x14

    .line 27
    invoke-static {v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->fromDp(I)Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-void
.end method


# virtual methods
.method public getColor()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getColorPressed()Lcom/mikepenz/materialdrawer/holder/ColorHolder;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mColorPressed:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    return-object v0
.end method

.method public getCorners()Lcom/mikepenz/materialdrawer/holder/DimenHolder;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mCorners:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    return-object v0
.end method

.method public getGradientDrawable()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mGradientDrawable:I

    return v0
.end method

.method public style(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 168
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Lcom/mikepenz/materialdrawer/model/utils/BadgeDrawableBuilder;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/model/utils/BadgeDrawableBuilder;-><init>(Lcom/mikepenz/materialdrawer/holder/BadgeStyle;)V

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialdrawer/model/utils/BadgeDrawableBuilder;->build(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mikepenz/materialize/util/UIUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mBadgeBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1}, Lcom/mikepenz/materialize/util/UIUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    if-eqz v1, :cond_1

    .line 178
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mTextColor:Lcom/mikepenz/materialdrawer/holder/ColorHolder;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/mikepenz/materialdrawer/holder/ColorHolder;->applyToOr(Lcom/mikepenz/materialize/holder/ColorHolder;Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 180
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 184
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingLeftRight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-virtual {p2, v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->asPixel(Landroid/content/Context;)I

    move-result p2

    .line 185
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mPaddingTopBottom:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->asPixel(Landroid/content/Context;)I

    move-result v1

    .line 186
    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 189
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/holder/BadgeStyle;->mMinWidth:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-virtual {p2, v0}, Lcom/mikepenz/materialdrawer/holder/DimenHolder;->asPixel(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinWidth(I)V

    return-void
.end method
