.class public Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
.super Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;
.source "AbstractPatriciaTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TrieEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3fc85ab3d6fcf8edL


# instance fields
.field protected bitIndex:I

.field protected left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    .line 1299
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/trie/AbstractBitwiseTrie$BasicEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1301
    iput p3, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    const/4 p1, 0x0

    .line 1303
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1304
    iput-object p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1305
    iput-object p1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    .line 1306
    iput-object p0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 1315
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExternalNode()Z
    .locals 1

    .line 1329
    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->isInternalNode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isInternalNode()Z
    .locals 1

    .line 1322
    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1336
    iget v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "RootEntry("

    .line 1337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "Entry("

    .line 1339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "key="

    .line 1342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "value="

    .line 1343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v1, :cond_2

    .line 1347
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-ne v1, v2, :cond_1

    const-string v1, "parent="

    .line 1348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ROOT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "parent="

    .line 1350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->parent:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "parent="

    .line 1353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", "

    .line 1355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v1, :cond_4

    .line 1358
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-ne v1, v2, :cond_3

    const-string v1, "left="

    .line 1359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ROOT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v1, "left="

    .line 1361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->left:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v1, "left="

    .line 1364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ", "

    .line 1366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v1, :cond_6

    .line 1369
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-ne v1, v2, :cond_5

    const-string v1, "right="

    .line 1370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ROOT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v1, "right="

    .line 1372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->right:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string v1, "right="

    .line 1375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v1, ", "

    .line 1377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    if-eqz v1, :cond_8

    .line 1380
    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    if-ne v1, v2, :cond_7

    const-string v1, "predecessor="

    .line 1381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ROOT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const-string v1, "predecessor="

    .line 1383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->predecessor:Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;

    iget v1, v1, Lorg/apache/commons/collections4/trie/AbstractPatriciaTrie$TrieEntry;->bitIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_4
    const-string v1, ")"

    .line 1388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
