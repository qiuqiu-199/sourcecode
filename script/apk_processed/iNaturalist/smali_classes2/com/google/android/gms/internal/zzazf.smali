.class public final Lcom/google/android/gms/internal/zzazf;
.super Lcom/google/android/gms/internal/zzact;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzazf$zzh;,
        Lcom/google/android/gms/internal/zzazf$zzg;,
        Lcom/google/android/gms/internal/zzazf$zzf;,
        Lcom/google/android/gms/internal/zzazf$zzd;,
        Lcom/google/android/gms/internal/zzazf$zzc;,
        Lcom/google/android/gms/internal/zzazf$zzb;,
        Lcom/google/android/gms/internal/zzazf$zza;,
        Lcom/google/android/gms/internal/zzazf$zze;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzazf;",
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
.field zzE:Ljava/lang/String;

.field zzGV:Ljava/lang/String;

.field zzacX:Ljava/lang/String;

.field final zzaiI:I

.field zzakb:Ljava/lang/String;

.field zzbCA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzazf$zzg;",
            ">;"
        }
    .end annotation
.end field

.field zzbCB:I

.field zzbCC:I

.field zzbCD:Ljava/lang/String;

.field zzbCE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzazf$zzh;",
            ">;"
        }
    .end annotation
.end field

.field zzbCF:Z

.field final zzbCm:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field zzbCn:Ljava/lang/String;

.field zzbCo:Lcom/google/android/gms/internal/zzazf$zza;

.field zzbCp:Ljava/lang/String;

.field zzbCq:Ljava/lang/String;

.field zzbCr:I

.field zzbCs:Lcom/google/android/gms/internal/zzazf$zzb;

.field zzbCt:Ljava/lang/String;

.field zzbCu:Lcom/google/android/gms/internal/zzazf$zzc;

.field zzbCv:Z

.field zzbCw:Lcom/google/android/gms/internal/zzazf$zzd;

.field zzbCx:Ljava/lang/String;

.field zzbCy:I

.field zzbCz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzazf$zzf;",
            ">;"
        }
    .end annotation
.end field

.field zzzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/google/android/gms/internal/zzazg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzazg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzazf;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "aboutMe"

    const-string v2, "aboutMe"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzacs$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "ageRange"

    const-string v2, "ageRange"

    const-class v4, Lcom/google/android/gms/internal/zzazf$zza;

    const/4 v5, 0x3

    invoke-static {v2, v5, v4}, Lcom/google/android/gms/internal/zzacs$zza;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "birthday"

    const-string v2, "birthday"

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/zzacs$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "braggingRights"

    const-string v2, "braggingRights"

    const/4 v6, 0x5

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/zzacs$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "circledByCount"

    const-string v2, "circledByCount"

    const/4 v7, 0x6

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/zzacs$zza;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "cover"

    const-string v2, "cover"

    const-class v8, Lcom/google/android/gms/internal/zzazf$zzb;

    const/4 v9, 0x7

    invoke-static {v2, v9, v8}, Lcom/google/android/gms/internal/zzacs$zza;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "currentLocation"

    const-string v2, "currentLocation"

    const/16 v8, 0x8

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/zzacs$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "displayName"

    const-string v2, "displayName"

    const/16 v10, 0x9

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/zzacs$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "gender"

    const-string v2, "gender"

    new-instance v10, Lcom/google/android/gms/internal/zzacp;

    invoke-direct {v10}, Lcom/google/android/gms/internal/zzacp;-><init>()V

    const-string v11, "male"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v10

    const-string v11, "female"

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v13}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v10

    const-string v11, "other"

    invoke-virtual {v10, v11, v3}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v10

    const/16 v11, 0xc

    invoke-static {v2, v11, v10, v12}, Lcom/google/android/gms/internal/zzacs$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzacs$zzb;Z)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/16 v10, 0xe

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/zzacs$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "image"

    const-string v2, "image"

    const-class v10, Lcom/google/android/gms/internal/zzazf$zzc;

    const/16 v11, 0xf

    invoke-static {v2, v11, v10}, Lcom/google/android/gms/internal/zzacs$zza;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "isPlusUser"

    const-string v2, "isPlusUser"

    const/16 v10, 0x10

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/zzacs$zza;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "language"

    const-string v2, "language"

    const/16 v10, 0x12

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/zzacs$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    const-class v10, Lcom/google/android/gms/internal/zzazf$zzd;

    const/16 v11, 0x13

    invoke-static {v2, v11, v10}, Lcom/google/android/gms/internal/zzacs$zza;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "nickname"

    const/16 v10, 0x14

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/zzacs$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "objectType"

    const-string v2, "objectType"

    new-instance v10, Lcom/google/android/gms/internal/zzacp;

    invoke-direct {v10}, Lcom/google/android/gms/internal/zzacp;-><init>()V

    const-string v11, "person"

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v10

    const-string v11, "page"

    invoke-virtual {v10, v11, v13}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v10

    const/16 v11, 0x15

    invoke-static {v2, v11, v10, v12}, Lcom/google/android/gms/internal/zzacs$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzacs$zzb;Z)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "organizations"

    const-string v2, "organizations"

    const-class v10, Lcom/google/android/gms/internal/zzazf$zzf;

    const/16 v11, 0x16

    invoke-static {v2, v11, v10}, Lcom/google/android/gms/internal/zzacs$zza;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "placesLived"

    const-string v2, "placesLived"

    const-class v10, Lcom/google/android/gms/internal/zzazf$zzg;

    const/16 v11, 0x17

    invoke-static {v2, v11, v10}, Lcom/google/android/gms/internal/zzacs$zza;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "plusOneCount"

    const-string v2, "plusOneCount"

    const/16 v10, 0x18

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/zzacs$zza;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "relationshipStatus"

    const-string v2, "relationshipStatus"

    new-instance v10, Lcom/google/android/gms/internal/zzacp;

    invoke-direct {v10}, Lcom/google/android/gms/internal/zzacp;-><init>()V

    const-string v11, "single"

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v10

    const-string v11, "in_a_relationship"

    invoke-virtual {v10, v11, v13}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v10

    const-string v11, "engaged"

    invoke-virtual {v10, v11, v3}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v3

    const-string v10, "married"

    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v3

    const-string v5, "its_complicated"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v3

    const-string v4, "open_relationship"

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v3

    const-string v4, "widowed"

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v3

    const-string v4, "in_domestic_partnership"

    invoke-virtual {v3, v4, v9}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v3

    const-string v4, "in_civil_union"

    invoke-virtual {v3, v4, v8}, Lcom/google/android/gms/internal/zzacp;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacp;

    move-result-object v3

    const/16 v4, 0x19

    invoke-static {v2, v4, v3, v12}, Lcom/google/android/gms/internal/zzacs$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzacs$zzb;Z)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "tagline"

    const-string v2, "tagline"

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzacs$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/16 v3, 0x1b

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzacs$zza;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "urls"

    const-string v2, "urls"

    const-class v3, Lcom/google/android/gms/internal/zzazf$zzh;

    const/16 v4, 0x1c

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/zzacs$zza;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    const-string v1, "verified"

    const-string v2, "verified"

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzacs$zza;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzact;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzazf;->zzaiI:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzazf$zzc;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzact;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzazf;->zzaiI:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzakb:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazf;->zzGV:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 p2, 0xe

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazf;->zzbCu:Lcom/google/android/gms/internal/zzazf$zzc;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 p2, 0xf

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput p4, p0, Lcom/google/android/gms/internal/zzazf;->zzbCy:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 p2, 0x15

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzazf;->zzE:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 p2, 0x1b

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/internal/zzazf$zza;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/zzazf$zzb;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/zzazf$zzc;ZLjava/lang/String;Lcom/google/android/gms/internal/zzazf$zzd;Ljava/lang/String;ILjava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzazf$zza;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/zzazf$zzb;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzazf$zzc;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzazf$zzd;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzazf$zzf;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzazf$zzg;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzazf$zzh;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzact;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    move v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/zzazf;->zzaiI:I

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCn:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCo:Lcom/google/android/gms/internal/zzazf$zza;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCp:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCq:Ljava/lang/String;

    move v1, p7

    iput v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCr:I

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCs:Lcom/google/android/gms/internal/zzazf$zzb;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCt:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzakb:Ljava/lang/String;

    move v1, p11

    iput v1, v0, Lcom/google/android/gms/internal/zzazf;->zzzk:I

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzGV:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCu:Lcom/google/android/gms/internal/zzazf$zzc;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCv:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzacX:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCw:Lcom/google/android/gms/internal/zzazf$zzd;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCx:Ljava/lang/String;

    move/from16 v1, p18

    iput v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCy:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCz:Ljava/util/List;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCA:Ljava/util/List;

    move/from16 v1, p21

    iput v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCB:I

    move/from16 v1, p22

    iput v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCC:I

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCD:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzE:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCE:Ljava/util/List;

    move/from16 v1, p26

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzazf;->zzbCF:Z

    return-void
.end method

.method public static zzG([B)Lcom/google/android/gms/internal/zzazf;
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p0, Lcom/google/android/gms/internal/zzazf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzazf;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/google/android/gms/internal/zzazf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzazf;

    sget-object v2, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

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

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzazf;->zza(Lcom/google/android/gms/internal/zzacs$zza;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzazf;->zza(Lcom/google/android/gms/internal/zzacs$zza;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzazf;->zzb(Lcom/google/android/gms/internal/zzacs$zza;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzazf;->zzb(Lcom/google/android/gms/internal/zzacs$zza;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzazf;->zza(Lcom/google/android/gms/internal/zzacs$zza;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_5
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazf;->zzPk()Lcom/google/android/gms/internal/zzazf;

    move-result-object v0

    return-object v0
.end method

.method public getAboutMe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCn:Ljava/lang/String;

    return-object v0
.end method

.method public getAgeRange()Lcom/google/android/gms/plus/model/people/Person$AgeRange;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCo:Lcom/google/android/gms/internal/zzazf$zza;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCp:Ljava/lang/String;

    return-object v0
.end method

.method public getBraggingRights()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCq:Ljava/lang/String;

    return-object v0
.end method

.method public getCircledByCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCr:I

    return v0
.end method

.method public getCover()Lcom/google/android/gms/plus/model/people/Person$Cover;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCs:Lcom/google/android/gms/internal/zzazf$zzb;

    return-object v0
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCt:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzakb:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzazf;->zzzk:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzGV:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/google/android/gms/plus/model/people/Person$Image;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCu:Lcom/google/android/gms/internal/zzazf$zzc;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzacX:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/google/android/gms/plus/model/people/Person$Name;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCw:Lcom/google/android/gms/internal/zzazf$zzd;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCx:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCy:I

    return v0
.end method

.method public getOrganizations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/people/Person$Organizations;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCz:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlacesLived()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/people/Person$PlacesLived;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCA:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlusOneCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCB:I

    return v0
.end method

.method public getRelationshipStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCC:I

    return v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCD:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzE:Ljava/lang/String;

    return-object v0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/people/Person$Urls;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCE:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasAboutMe()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAgeRange()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasBirthday()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasBraggingRights()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasCircledByCount()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasCover()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasCurrentLocation()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDisplayName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasGender()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasImage()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasIsPlusUser()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLanguage()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasNickname()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasObjectType()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasOrganizations()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPlacesLived()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPlusOneCount()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasRelationshipStatus()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasTagline()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasUrl()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasUrls()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasVerified()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

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

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzazf;->zza(Lcom/google/android/gms/internal/zzacs$zza;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzacs$zza;->zzyx()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzazf;->zzb(Lcom/google/android/gms/internal/zzacs$zza;)Ljava/lang/Object;

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

.method public isPlusUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCv:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCF:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzazg;->zza(Lcom/google/android/gms/internal/zzazf;Landroid/os/Parcel;I)V

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

    sget-object v0, Lcom/google/android/gms/internal/zzazf;->zzbCl:Ljava/util/HashMap;

    return-object v0
.end method

.method public zzPk()Lcom/google/android/gms/internal/zzazf;
    .locals 0

    return-object p0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzacs$zza;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazf;->zzbCm:Ljava/util/Set;

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

    :pswitch_0
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

    :pswitch_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCF:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCE:Ljava/util/List;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzE:Ljava/lang/String;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCD:Ljava/lang/String;

    return-object p1

    :pswitch_5
    iget p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCC:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCB:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCA:Ljava/util/List;

    return-object p1

    :pswitch_8
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCz:Ljava/util/List;

    return-object p1

    :pswitch_9
    iget p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCy:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCx:Ljava/lang/String;

    return-object p1

    :pswitch_b
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCw:Lcom/google/android/gms/internal/zzazf$zzd;

    return-object p1

    :pswitch_c
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzacX:Ljava/lang/String;

    return-object p1

    :pswitch_d
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCv:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_e
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCu:Lcom/google/android/gms/internal/zzazf$zzc;

    return-object p1

    :pswitch_f
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzGV:Ljava/lang/String;

    return-object p1

    :pswitch_10
    iget p1, p0, Lcom/google/android/gms/internal/zzazf;->zzzk:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_11
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzakb:Ljava/lang/String;

    return-object p1

    :pswitch_12
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCt:Ljava/lang/String;

    return-object p1

    :pswitch_13
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCs:Lcom/google/android/gms/internal/zzazf$zzb;

    return-object p1

    :pswitch_14
    iget p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCr:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_15
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCq:Ljava/lang/String;

    return-object p1

    :pswitch_16
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCp:Ljava/lang/String;

    return-object p1

    :pswitch_17
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCo:Lcom/google/android/gms/internal/zzazf$zza;

    return-object p1

    :pswitch_18
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazf;->zzbCn:Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic zzyr()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazf;->zzPj()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
