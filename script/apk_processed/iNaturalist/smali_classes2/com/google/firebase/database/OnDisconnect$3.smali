.class Lcom/google/firebase/database/OnDisconnect$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/OnDisconnect;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbZO:Lcom/google/android/gms/internal/zzbtb;

.field final synthetic zzcah:Lcom/google/firebase/database/OnDisconnect;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/OnDisconnect;Lcom/google/android/gms/internal/zzbtb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/OnDisconnect$3;->zzcah:Lcom/google/firebase/database/OnDisconnect;

    iput-object p2, p0, Lcom/google/firebase/database/OnDisconnect$3;->zzbZO:Lcom/google/android/gms/internal/zzbtb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect$3;->zzcah:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v0}, Lcom/google/firebase/database/OnDisconnect;->zzb(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/zzbpj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/OnDisconnect$3;->zzcah:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v1}, Lcom/google/firebase/database/OnDisconnect;->zza(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/OnDisconnect$3;->zzbZO:Lcom/google/android/gms/internal/zzbtb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbtb;->zzabJ()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method
