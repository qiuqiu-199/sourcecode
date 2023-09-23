.class public Lcom/google/android/gms/internal/zzxb;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/android/gms/cast/framework/IntroductoryOverlay;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mColor:I

.field private final zzaqM:Z

.field private zzaqN:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

.field private zzaqO:Z

.field private zzaqv:Landroid/view/View;

.field private zzaqx:Ljava/lang/String;

.field private zzaqy:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsU()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqM:Z

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsS()Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqy:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsR()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqv:Landroid/view/View;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsV()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqx:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsT()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzxb;->mColor:I

    return-void
.end method

.method private reset()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxb;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqy:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqv:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqN:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqx:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzxb;->mColor:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqO:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzxb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqO:Z

    return p0
.end method

.method static zzax(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzxb;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzxb;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzxb;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqy:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzxb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxb;->reset()V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzxb;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqN:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    return-object p0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxb;->reset()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public remove()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxb;->reset()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqv:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqO:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxb;->zzax(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzav(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxb;->reset()V

    return-void

    :cond_2
    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxb;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqN:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iget v0, p0, Lcom/google/android/gms/internal/zzxb;->mColor:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqN:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iget v1, p0, Lcom/google/android/gms/internal/zzxb;->mColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzca(I)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqN:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzxb;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$layout;->cast_help_text:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxb;->zzaqN:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxb;->zzaqx:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxb;->zzaqN:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqN:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxb;->zzaqv:Landroid/view/View;

    new-instance v3, Lcom/google/android/gms/internal/zzxb$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzxb$1;-><init>(Lcom/google/android/gms/internal/zzxb;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Landroid/view/View;Landroid/view/View;ZLcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzxb;->zzaqO:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb;->zzaqN:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzh(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method
