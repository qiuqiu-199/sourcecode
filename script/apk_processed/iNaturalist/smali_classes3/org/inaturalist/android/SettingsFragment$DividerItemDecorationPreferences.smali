.class Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerItemDecorationPreferences"
.end annotation


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private paddingLeft:I

.field private paddingRight:I

.field final synthetic this$0:Lorg/inaturalist/android/SettingsFragment;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/SettingsFragment;Landroid/content/Context;II)V
    .locals 0

    .line 354
    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, 0x0

    .line 351
    iput p1, p0, Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;->paddingLeft:I

    .line 352
    iput p1, p0, Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;->paddingRight:I

    const p1, 0x7f08011f

    .line 355
    invoke-static {p2, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 356
    iput p3, p0, Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;->paddingLeft:I

    .line 357
    iput p4, p0, Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;->paddingRight:I

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 7

    .line 362
    iget p3, p0, Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;->paddingLeft:I

    .line 363
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;->paddingRight:I

    sub-int/2addr v0, v1

    .line 364
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_0

    const/4 v3, 0x1

    .line 369
    :cond_0
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v3, :cond_1

    .line 371
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 372
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 373
    iget-object v5, p0, Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 374
    iget-object v6, p0, Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p3, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget-object v4, p0, Lorg/inaturalist/android/SettingsFragment$DividerItemDecorationPreferences;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
