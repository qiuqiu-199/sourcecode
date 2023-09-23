.class Lcom/google/android/gms/internal/zzboq$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzboq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzboq;->zzbd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcci:Lcom/google/android/gms/internal/zzboq;

.field final synthetic zzccm:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboq;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzboq$3;->zzccm:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzaA(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    sget-object v1, Lcom/google/android/gms/internal/zzboq$zzb;->zzccu:Lcom/google/android/gms/internal/zzboq$zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;Lcom/google/android/gms/internal/zzboq$zzb;)Lcom/google/android/gms/internal/zzboq$zzb;

    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;I)I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq;->zzg(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbop$zza;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzbop$zza;->zzbc(Z)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzccm:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq;->zzh(Lcom/google/android/gms/internal/zzboq;)V

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;Z)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzboq;->zzg(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbop$zza;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/zzbop$zza;->zzbc(Z)V

    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Authentication failed: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq;->zzi(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzboj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzboj;->close()V

    const-string p1, "invalid_token"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq;->zzj(Lcom/google/android/gms/internal/zzboq;)I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq;->zzk(Lcom/google/android/gms/internal/zzboq;)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq;->zzl(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbou;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbou;->zzYh()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboq$3;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object p1

    const-string v0, "Provided authentication credentials are invalid. This usually indicates your FirebaseApp instance was not initialized correctly. Make sure your google-services.json file has the correct firebase_url and api_key. You can re-download google-services.json from https://console.firebase.google.com/."

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbrn;->warn(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
