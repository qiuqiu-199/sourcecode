.class Lcom/google/android/gms/internal/zzbvb$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbvd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbvb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzcpA:Lcom/google/android/gms/internal/zzbup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbup<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzcpE:Lcom/google/android/gms/internal/zzbwg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbwg<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzcpF:Z

.field private final zzcpG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzcpz:Lcom/google/android/gms/internal/zzbuy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbuy<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbwg;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzbwg<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbuy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzbuy;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpz:Lcom/google/android/gms/internal/zzbuy;

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbup;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/zzbup;

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpA:Lcom/google/android/gms/internal/zzbup;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpz:Lcom/google/android/gms/internal/zzbuy;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpA:Lcom/google/android/gms/internal/zzbup;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbvi;->zzax(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpE:Lcom/google/android/gms/internal/zzbwg;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpF:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpG:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbwg;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzbvb$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbvb$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbwg;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvc;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbuk;",
            "Lcom/google/android/gms/internal/zzbwg<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzbvc<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpE:Lcom/google/android/gms/internal/zzbwg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpE:Lcom/google/android/gms/internal/zzbwg;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbwg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpF:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpE:Lcom/google/android/gms/internal/zzbwg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbwg;->zzadR()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbwg;->zzadQ()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpG:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbwg;->zzadQ()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzbvb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpz:Lcom/google/android/gms/internal/zzbuy;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbvb$zza;->zzcpA:Lcom/google/android/gms/internal/zzbup;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzbvb;-><init>(Lcom/google/android/gms/internal/zzbuy;Lcom/google/android/gms/internal/zzbup;Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;Lcom/google/android/gms/internal/zzbvd;Lcom/google/android/gms/internal/zzbvb$1;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
