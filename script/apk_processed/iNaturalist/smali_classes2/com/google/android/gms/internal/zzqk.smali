.class public Lcom/google/android/gms/internal/zzqk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqm<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzZc:Lcom/google/android/gms/internal/zzqn;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqk;->mValue:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/zzqn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzqn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqk;->zzZc:Lcom/google/android/gms/internal/zzqn;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzqk;->zzZc:Lcom/google/android/gms/internal/zzqn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqn;->zzlm()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqk;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/zzqk;->mValue:Ljava/lang/Object;

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzc(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqk;->zzZc:Lcom/google/android/gms/internal/zzqn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqn;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzd(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqk;->zzZc:Lcom/google/android/gms/internal/zzqn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqn;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method