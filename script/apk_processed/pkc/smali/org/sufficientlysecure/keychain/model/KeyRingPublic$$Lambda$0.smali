.class final synthetic Lorg/sufficientlysecure/keychain/model/KeyRingPublic$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/model/KeyRingPublic$$Lambda$0;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/KeyRingPublic$$Lambda$0;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/KeyRingPublic$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/KeyRingsPublicModel$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/KeyRingPublic$$Lambda$0;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/KeyRingPublic$$Lambda$0;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public create(J[B)Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    move-object/16 p0, p3

    new-instance v0, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;

    invoke-direct {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/model/AutoValue_KeyRingPublic;-><init>(J[B)V

    check-cast v0, Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/model/KeyRingPublic$$Lambda$0;--->create(J[B)Lorg/sufficientlysecure/keychain/KeyRingsPublicModel;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
