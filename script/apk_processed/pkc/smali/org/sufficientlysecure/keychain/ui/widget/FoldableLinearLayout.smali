.class public Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "FoldableLinearLayout.java"


# instance fields
.field private mFoldableContainer:Landroid/widget/LinearLayout;

.field private mFoldableIcon:Landroid/widget/ImageView;

.field private mFoldableLayout:Landroid/view/View;

.field private mFoldableTextView:Landroid/widget/TextView;

.field private mFolded:Z

.field private mFoldedLabel:Ljava/lang/String;

.field private mHasMigrated:Z

.field private mInitializeFolded:Z

.field private mShortAnimationDuration:Ljava/lang/Integer;

.field private mUnFoldedLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 62
    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mHasMigrated:Z

    const/4 v0, 0x0

    .line 52
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mShortAnimationDuration:Ljava/lang/Integer;

    .line 53
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    .line 54
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    .line 55
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    .line 63
    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 67
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mHasMigrated:Z

    const/4 v0, 0x0

    .line 52
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mShortAnimationDuration:Ljava/lang/Integer;

    .line 53
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    .line 54
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    .line 55
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    .line 68
    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 72
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p0, 0x0

    .line 51
    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mHasMigrated:Z

    const/4 p0, 0x0

    .line 52
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mShortAnimationDuration:Ljava/lang/Integer;

    .line 53
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    .line 54
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    .line 55
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    .line 73
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->toggleFolded()V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private initialiseInnerViews()V
    .locals 5

    move-object/16 v2, p0

    .line 146
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    const v1, 0x7f09017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableIcon:Landroid/widget/ImageView;

    .line 147
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableIcon:Landroid/widget/ImageView;

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    const v1, 0x7f09017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    .line 149
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldedLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mShortAnimationDuration:Ljava/lang/Integer;

    .line 154
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    const v1, 0x7f090179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 155
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$1;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$1;-><init>(Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;--->initialiseInnerViews()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private migrateChildrenToContainer()V
    .locals 9

    move-object/16 v6, p0

    .line 119
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->getChildCount()I

    move-result v0

    .line 120
    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 123
    invoke-virtual {v6, v3}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 130
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->detachAllViewsFromParent()V

    .line 133
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f0c0079

    const/4 v5, 0x1

    .line 136
    invoke-virtual {v3, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    .line 137
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableLayout:Landroid/view/View;

    const v4, 0x7f090178

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    :goto_1
    if-ge v2, v0, :cond_1

    .line 141
    aget-object v3, v1, v2

    invoke-virtual {v6, v3}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;--->migrateChildrenToContainer()V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    if-eqz v4, :cond_0

    .line 84
    sget-object v0, Lorg/sufficientlysecure/keychain/R$styleable;->FoldableLinearLayout:[I

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 86
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldedLabel:Ljava/lang/String;

    const/4 v0, 0x2

    .line 87
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mUnFoldedLabel:Ljava/lang/String;

    const/4 v0, 0x1

    .line 88
    invoke-virtual {v4, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mInitializeFolded:Z

    .line 89
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    :cond_0
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldedLabel:Ljava/lang/String;

    const v0, 0x7f110baf

    if-nez v4, :cond_1

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldedLabel:Ljava/lang/String;

    :goto_0
    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldedLabel:Ljava/lang/String;

    .line 93
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mUnFoldedLabel:Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mUnFoldedLabel:Ljava/lang/String;

    :goto_1
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mUnFoldedLabel:Ljava/lang/String;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;--->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private toggleFolded()V
    .locals 7

    move-object/16 v4, p0

    .line 165
    iget-boolean v0, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFolded:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFolded:Z

    .line 166
    iget-boolean v0, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFolded:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableIcon:Landroid/widget/ImageView;

    const v3, 0x7f0800b0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 170
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mShortAnimationDuration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 171
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mUnFoldedLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableIcon:Landroid/widget/ImageView;

    const v3, 0x7f0800b1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 177
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mShortAnimationDuration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 178
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$2;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout$2;-><init>(Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 193
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableTextView:Landroid/widget/TextView;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldedLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;--->toggleFolded()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 205
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mFoldableContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;--->addView(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onFinishInflate()V
    .locals 4

    move-object/16 v1, p0

    .line 100
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mHasMigrated:Z

    if-nez v0, :cond_0

    .line 101
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->migrateChildrenToContainer()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mHasMigrated:Z

    .line 105
    :cond_0
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->initialiseInnerViews()V

    .line 107
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->mInitializeFolded:Z

    if-nez v0, :cond_1

    .line 108
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;->toggleFolded()V

    .line 111
    :cond_1
    invoke-super {v1}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/widget/FoldableLinearLayout;--->onFinishInflate()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
