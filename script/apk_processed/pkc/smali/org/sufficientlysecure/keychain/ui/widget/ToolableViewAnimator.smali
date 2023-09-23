.class public Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;
.super Landroid/widget/ViewAnimator;
.source "ToolableViewAnimator.java"


# instance fields
.field private mInitChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 47
    invoke-direct {v0, v1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 44
    iput v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->mInitChild:I

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 51
    invoke-direct {v2, v3, v4}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 44
    iput v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->mInitChild:I

    .line 53
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lorg/sufficientlysecure/keychain/R$styleable;->ToolableViewAnimator:[I

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 55
    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v2, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->mInitChild:I

    .line 56
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move/16 p0, p3

    .line 61
    invoke-direct {v3, v4, v5}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 44
    iput v0, v3, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->mInitChild:I

    .line 63
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Lorg/sufficientlysecure/keychain/R$styleable;->ToolableViewAnimator:[I

    const/4 v2, 0x0

    invoke-virtual {v4, v5, v1, p0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 65
    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v3, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->mInitChild:I

    .line 66
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    move-object/16 p0, p3

    .line 72
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->mInitChild:I

    add-int/lit8 v1, v0, -0x1

    iput v1, v2, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->mInitChild:I

    if-lez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-super {v2, v3, v4, p0}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;--->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayedChildId()I
    .locals 4

    move-object/16 v1, p0

    .line 117
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->getDisplayedChild()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;--->getDisplayedChildId()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDisplayedChild(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 80
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->getDisplayedChild()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 81
    invoke-super {v1, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;--->setDisplayedChild(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDisplayedChild(IZ)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move/16 v4, p2

    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChild(I)V

    return-void

    .line 91
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    .line 92
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 94
    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 96
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChild(I)V

    .line 98
    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 99
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;--->setDisplayedChild(IZ)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDisplayedChildId(I)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 103
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->getDisplayedChildId()I

    move-result v0

    if-ne v0, v4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 106
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 107
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 108
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChild(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;--->setDisplayedChildId(I)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
