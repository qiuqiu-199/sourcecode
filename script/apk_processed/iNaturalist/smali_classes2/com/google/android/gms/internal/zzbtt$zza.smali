.class Lcom/google/android/gms/internal/zzbtt$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbtt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final zzcoA:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final zzw:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtt$zza;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzw:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzcoA:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbtt$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzbtt$zza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbtt$zza;->zzcoA:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzcoA:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbtt$zza;->zzw:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzw:Ljava/lang/Runnable;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbtt$zza;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt$zza;->mActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt$zza;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzcoA:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public zzUL()Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzw:Ljava/lang/Runnable;

    return-object v0
.end method

.method public zzacU()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt$zza;->zzcoA:Ljava/lang/Object;

    return-object v0
.end method
