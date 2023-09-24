.class public Landroid/support/design/widget/FixedCollapsingToolbarLayout;
.super Landroid/support/design/widget/CollapsingToolbarLayout;
.source "FixedCollapsingToolbarLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FixedCollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 22
    iget-object v0, p0, Landroid/support/design/widget/FixedCollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 23
    iget-object v1, p0, Landroid/support/design/widget/FixedCollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Landroid/support/design/widget/FixedCollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FixedCollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 26
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->onMeasure(II)V

    .line 27
    iput-object v0, p0, Landroid/support/design/widget/FixedCollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    return-void
.end method
