.class final synthetic Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$13;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$13;->arg$1:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$13;---><init>(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public loadData()Ljava/lang/Object;
    .locals 4

    move-object/16 v1, p0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$13;->arg$1:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->lambda$null$10$ViewKeyAdvShareFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$13;--->loadData()Ljava/lang/Object;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
