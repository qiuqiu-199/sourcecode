.class Lcom/google/android/gms/internal/zzbpj$19;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbos;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbql;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzceE:Lcom/google/android/gms/internal/zzbpj;

.field final synthetic zzceY:Lcom/google/android/gms/internal/zzbpv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbpv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$19;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$19;->zzceY:Lcom/google/android/gms/internal/zzbpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zzat(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj$19;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    const-string v0, "Persisted write"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$19;->zzceY:Lcom/google/android/gms/internal/zzbpv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;Ljava/lang/String;Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseError;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj$19;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$19;->zzceY:Lcom/google/android/gms/internal/zzbpv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpv;->zzZm()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj$19;->zzceY:Lcom/google/android/gms/internal/zzbpv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-static {p2, v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;JLcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method
