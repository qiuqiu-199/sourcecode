.class public final Lcom/google/android/gms/internal/zzazf$zzb;
.super Lcom/google/android/gms/internal/zzact;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person$Cover;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzazf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzazf$zzb$zzb;,
        Lcom/google/android/gms/internal/zzazf$zzb$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzazf$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbCl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzacs$zza<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field zzbCI:Lcom/google/android/gms/internal/zzazf$zzb$zza;

.field zzbCJ:Lcom/google/android/gms/internal/zzazf$zzb$zzb;

.field zzbCK:I

.field final zzbCm:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzazi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzazi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzazf$zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCl:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCl:Ljava/util/HashMap;

    const-string v1, "coverInfo"

    const-string v2, "coverInfo"

    const-class v3, Lcom/google/android/gms/internal/zzazf$zzb$zza;

    const/4 v4, 0x2

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/zzacs$zza;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCl:Ljava/util/HashMap;

    const-string v1, "coverPhoto"

    const-string v2, "coverPhoto"

    const-class v3, Lcom/google/android/gms/internal/zzazf$zzb$zzb;

    const/4 v4, 0x3

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/zzacs$zza;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCl:Ljava/util/HashMap;

    const-string v1, "layout"

    const-string v2, "layout"

    new-instance v3, Lcom/google/android/gms/internal/zzacp;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzacp;-><init>()V

    const-string v4, "banner"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v2, v4, v3, v5}, Lcom/google/android/gms/internal/zzacs$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzacs$zzb;Z)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzact;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzaiI:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCm:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/internal/zzazf$zzb$zza;Lcom/google/android/gms/internal/zzazf$zzb$zzb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/google/android/gms/internal/zzazf$zzb$zza;",
            "Lcom/google/android/gms/internal/zzazf$zzb$zzb;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzact;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCm:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzaiI:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCI:Lcom/google/android/gms/internal/zzazf$zzb$zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCJ:Lcom/google/android/gms/internal/zzazf$zzb$zzb;

    iput p5, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCK:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/google/android/gms/internal/zzazf$zzb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzazf$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCl:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzacs$zza;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzazf$zzb;->zza(Lcom/google/android/gms/internal/zzacs$zza;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzazf$zzb;->zza(Lcom/google/android/gms/internal/zzacs$zza;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzazf$zzb;->zzb(Lcom/google/android/gms/internal/zzacs$zza;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzazf$zzb;->zzb(Lcom/google/android/gms/internal/zzacs$zza;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzazf$zzb;->zza(Lcom/google/android/gms/internal/zzacs$zza;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_5
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazf$zzb;->zzPm()Lcom/google/android/gms/internal/zzazf$zzb;

    move-result-object v0

    return-object v0
.end method

.method public getCoverInfo()Lcom/google/android/gms/plus/model/people/Person$Cover$CoverInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCI:Lcom/google/android/gms/internal/zzazf$zzb$zza;

    return-object v0
.end method

.method public getCoverPhoto()Lcom/google/android/gms/plus/model/people/Person$Cover$CoverPhoto;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCJ:Lcom/google/android/gms/internal/zzazf$zzb$zzb;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCK:I

    return v0
.end method

.method public hasCoverInfo()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCm:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasCoverPhoto()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCm:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLayout()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCm:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCl:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzacs$zza;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzazf$zzb;->zza(Lcom/google/android/gms/internal/zzacs$zza;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzacs$zza;->zzyx()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzazf$zzb;->zzb(Lcom/google/android/gms/internal/zzacs$zza;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzazi;->zza(Lcom/google/android/gms/internal/zzazf$zzb;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzPj()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzacs$zza<",
            "**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCl:Ljava/util/HashMap;

    return-object v0
.end method

.method public zzPm()Lcom/google/android/gms/internal/zzazf$zzb;
    .locals 0

    return-object p0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzacs$zza;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCm:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzacs$zza;->zzyx()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzacs$zza;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzacs$zza;->zzyx()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzacs$zza;->zzyx()I

    move-result p1

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown safe parcelable id="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget p1, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCK:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCJ:Lcom/google/android/gms/internal/zzazf$zzb$zzb;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf$zzb;->zzbCI:Lcom/google/android/gms/internal/zzazf$zzb$zza;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic zzyr()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazf$zzb;->zzPj()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method