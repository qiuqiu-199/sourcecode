.class Lcom/google/firebase/database/DatabaseReference$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/DatabaseReference;->zza(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbZO:Lcom/google/android/gms/internal/zzbtb;

.field final synthetic zzbZP:Lcom/google/firebase/database/DatabaseReference;

.field final synthetic zzbZR:Lcom/google/android/gms/internal/zzboy;

.field final synthetic zzbZS:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzboy;Lcom/google/android/gms/internal/zzbtb;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/DatabaseReference$3;->zzbZP:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lcom/google/firebase/database/DatabaseReference$3;->zzbZR:Lcom/google/android/gms/internal/zzboy;

    iput-object p3, p0, Lcom/google/firebase/database/DatabaseReference$3;->zzbZO:Lcom/google/android/gms/internal/zzbtb;

    iput-object p4, p0, Lcom/google/firebase/database/DatabaseReference$3;->zzbZS:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference$3;->zzbZP:Lcom/google/firebase/database/DatabaseReference;

    iget-object v0, v0, Lcom/google/firebase/database/DatabaseReference;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference$3;->zzbZP:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseReference;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/DatabaseReference$3;->zzbZR:Lcom/google/android/gms/internal/zzboy;

    iget-object v3, p0, Lcom/google/firebase/database/DatabaseReference$3;->zzbZO:Lcom/google/android/gms/internal/zzbtb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbtb;->zzabJ()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v4, p0, Lcom/google/firebase/database/DatabaseReference$3;->zzbZS:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V

    return-void
.end method
