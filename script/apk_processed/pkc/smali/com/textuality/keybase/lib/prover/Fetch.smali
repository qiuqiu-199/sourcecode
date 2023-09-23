.class public Lcom/textuality/keybase/lib/prover/Fetch;
.super Ljava/lang/Object;
.source "Fetch.java"


# instance fields
.field public mActualUrl:Ljava/lang/String;

.field public mBody:Ljava/lang/String;

.field public mProblem:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/textuality/keybase/lib/prover/Fetch;->mProblem:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/textuality/keybase/lib/prover/Fetch;->mActualUrl:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/textuality/keybase/lib/prover/Fetch;->mBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActualUrl()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/Fetch;->mActualUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/Fetch;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public problem()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/textuality/keybase/lib/prover/Fetch;->mProblem:Ljava/lang/String;

    return-object v0
.end method
