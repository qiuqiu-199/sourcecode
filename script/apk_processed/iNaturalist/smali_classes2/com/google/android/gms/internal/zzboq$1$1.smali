.class Lcom/google/android/gms/internal/zzboq$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbok$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzboq$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzccj:J

.field final synthetic zzcck:Lcom/google/android/gms/internal/zzboq$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboq$1;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzccj:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzccj:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzboq;->zzd(Lcom/google/android/gms/internal/zzboq;)J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    sget-object v1, Lcom/google/android/gms/internal/zzboq$zzb;->zzccq:Lcom/google/android/gms/internal/zzboq$zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;Lcom/google/android/gms/internal/zzboq$zzb;)Lcom/google/android/gms/internal/zzboq$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    const-string v1, "Error fetching token: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq;->zze(Lcom/google/android/gms/internal/zzboq;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object p1

    const-string v0, "Ignoring getToken error, because this was not the latest attempt."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public zziL(Ljava/lang/String;)V
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzccj:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzboq;->zzd(Lcom/google/android/gms/internal/zzboq;)J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zzb(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzboq$zzb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzboq$zzb;->zzccr:Lcom/google/android/gms/internal/zzboq$zzb;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    const-string v1, "Successfully fetched token, opening connection"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzboq;->zziO(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq;->zzb(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzboq$zzb;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/zzboq$zzb;->zzccq:Lcom/google/android/gms/internal/zzboq$zzb;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "Expected connection state disconnected, but was %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzboq;->zzb(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzboq$zzb;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbom;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object p1

    const-string v0, "Not opening connection after token refresh, because connection was set to disconnected"

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object p1

    const-string v0, "Ignoring getToken result, because this was not the latest attempt."

    :goto_1
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
