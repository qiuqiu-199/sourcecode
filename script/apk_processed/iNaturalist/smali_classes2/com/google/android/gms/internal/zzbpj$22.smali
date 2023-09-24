.class Lcom/google/android/gms/internal/zzbpj$22;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbos;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcdL:Lcom/google/android/gms/internal/zzbph;

.field final synthetic zzceE:Lcom/google/android/gms/internal/zzbpj;

.field final synthetic zzceH:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field final synthetic zzcfb:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$22;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$22;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzbpj$22;->zzcfb:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbpj$22;->zzceH:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zzat(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj$22;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    const-string v0, "updateChildren"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$22;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;Ljava/lang/String;Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseError;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj$22;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbpj$22;->zzcfb:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj$22;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-static {p2, v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;JLcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseError;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj$22;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$22;->zzceH:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$22;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzbph;)V

    return-void
.end method
