.class final synthetic Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;

.field private final arg$2:J

.field private final arg$3:I


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;JI)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-wide/16 v2, p2

    move/16 p1, p4

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$2;->arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;

    iput-wide v2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$2;->arg$2:J

    iput p1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$2;->arg$3:I

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$2;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;JI)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public loadData()Ljava/lang/Object;
    .locals 7

    move-object/16 v4, p0

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$2;->arg$1:Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;

    iget-wide v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$2;->arg$2:J

    iget v3, v4, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$2;->arg$3:I

    invoke-static {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;->lambda$getLinkedIdInfo$2$LinkedIdViewFragment$LinkedIdViewModel(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;JI)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;

    move-result-object v0

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$2;--->loadData()Ljava/lang/Object;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
