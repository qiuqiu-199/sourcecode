.class Landroid/support/v7/app/MediaRouteExpandCollapseButton;
.super Landroid/widget/ImageButton;
.source "MediaRouteExpandCollapseButton.java"


# instance fields
.field private final mCollapseAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private final mCollapseGroupDescription:Ljava/lang/String;

.field private final mExpandAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private final mExpandGroupDescription:Ljava/lang/String;

.field private mIsGroupExpanded:Z

.field private mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    sget p2, Landroid/support/v7/mediarouter/R$drawable;->ic_expand:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 53
    sget p2, Landroid/support/v7/mediarouter/R$drawable;->ic_collapse:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mCollapseAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 56
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 57
    invoke-static {p1, p3}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 59
    iget-object p3, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 60
    iget-object p3, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mCollapseAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 62
    sget p2, Landroid/support/v7/mediarouter/R$string;->mr_controller_expand_group:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandGroupDescription:Ljava/lang/String;

    .line 63
    sget p2, Landroid/support/v7/mediarouter/R$string;->mr_controller_collapse_group:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mCollapseGroupDescription:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandGroupDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
    new-instance p1, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;

    invoke-direct {p1, p0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;-><init>(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)V

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mIsGroupExpanded:Z

    return p0
.end method

.method static synthetic access$002(Landroid/support/v7/app/MediaRouteExpandCollapseButton;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mIsGroupExpanded:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static synthetic access$200(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mCollapseGroupDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mCollapseAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandGroupDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method
