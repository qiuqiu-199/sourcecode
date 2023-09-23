.class final synthetic Lorg/sufficientlysecure/keychain/model/KeySignature$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/KeySignaturesModel$Creator;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/model/KeySignature$$Lambda$0;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/KeySignature$$Lambda$0;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/KeySignature$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/KeySignaturesModel$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/KeySignature$$Lambda$0;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/KeySignature$$Lambda$0;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public create(JJ)Lorg/sufficientlysecure/keychain/KeySignaturesModel;
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    move-wide/16 p0, p3

    new-instance v0, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;

    invoke-direct {v0, v2, v3, p0, p1}, Lorg/sufficientlysecure/keychain/model/AutoValue_KeySignature;-><init>(JJ)V

    check-cast v0, Lorg/sufficientlysecure/keychain/KeySignaturesModel;

    return-object v0

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/model/KeySignature$$Lambda$0;--->create(JJ)Lorg/sufficientlysecure/keychain/KeySignaturesModel;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
