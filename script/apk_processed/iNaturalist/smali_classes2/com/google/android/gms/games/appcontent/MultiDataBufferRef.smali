.class public abstract Lcom/google/android/gms/games/appcontent/MultiDataBufferRef;
.super Lcom/google/android/gms/common/data/zzc;


# instance fields
.field protected final zzaZo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object p1, p0, Lcom/google/android/gms/games/appcontent/MultiDataBufferRef;->zzaZo:Ljava/util/ArrayList;

    return-void
.end method
