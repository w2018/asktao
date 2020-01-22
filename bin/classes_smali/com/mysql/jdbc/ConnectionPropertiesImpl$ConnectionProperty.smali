.class abstract Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
.super Ljava/lang/Object;
.source "ConnectionPropertiesImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ConnectionProperty"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x5c37432de3e4f49fL


# instance fields
.field allowableValues:[Ljava/lang/String;

.field categoryName:Ljava/lang/String;

.field defaultValue:Ljava/lang/Object;

.field description:Ljava/lang/String;

.field lowerBound:I

.field order:I

.field propertyName:Ljava/lang/String;

.field required:Z

.field sinceVersion:Ljava/lang/String;

.field updateCount:I

.field upperBound:I

.field valueAsObject:Ljava/lang/Object;

.field wasExplicitlySet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->updateCount:I

    .line 144
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->wasExplicitlySet:Z

    .line 147
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->updateCount:I

    .line 144
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->wasExplicitlySet:Z

    .line 152
    iput-object p6, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->description:Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->propertyName:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->defaultValue:Ljava/lang/Object;

    .line 155
    iput-object p2, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->valueAsObject:Ljava/lang/Object;

    .line 156
    iput-object p3, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->allowableValues:[Ljava/lang/String;

    .line 157
    iput p4, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->lowerBound:I

    .line 158
    iput p5, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->upperBound:I

    .line 159
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->required:Z

    .line 160
    iput-object p7, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->sinceVersion:Ljava/lang/String;

    .line 161
    iput-object p8, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->categoryName:Ljava/lang/String;

    .line 162
    iput p9, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->order:I

    .line 163
    return-void
.end method


# virtual methods
.method getAllowableValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->allowableValues:[Ljava/lang/String;

    return-object v0
.end method

.method getAsDriverPropertyInfo()Ljava/sql/DriverPropertyInfo;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 261
    new-instance v1, Ljava/sql/DriverPropertyInfo;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->propertyName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getAllowableValues()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljava/sql/DriverPropertyInfo;->choices:[Ljava/lang/String;

    .line 263
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->valueAsObject:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->valueAsObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Ljava/sql/DriverPropertyInfo;->value:Ljava/lang/String;

    .line 264
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->required:Z

    iput-boolean v0, v1, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 265
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->description:Ljava/lang/String;

    iput-object v0, v1, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 267
    return-object v1
.end method

.method getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method getLowerBound()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->lowerBound:I

    return v0
.end method

.method getOrder()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->order:I

    return v0
.end method

.method getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method getUpdateCount()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->updateCount:I

    return v0
.end method

.method getUpperBound()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->upperBound:I

    return v0
.end method

.method getValueAsObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->valueAsObject:Ljava/lang/Object;

    return-object v0
.end method

.method abstract hasValueConstraints()Z
.end method

.method abstract initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method initializeFrom(Ljava/util/Properties;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 217
    return-void
.end method

.method initializeFrom(Ljavax/naming/Reference;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/naming/Reference;->get(Ljava/lang/String;)Ljavax/naming/RefAddr;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Ljavax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 227
    :cond_0
    return-void
.end method

.method isExplicitlySet()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->wasExplicitlySet:Z

    return v0
.end method

.method abstract isRangeBased()Z
.end method

.method setCategoryName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->categoryName:Ljava/lang/String;

    .line 239
    return-void
.end method

.method setOrder(I)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->order:I

    .line 247
    return-void
.end method

.method setValueAsObject(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->valueAsObject:Ljava/lang/Object;

    .line 251
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->updateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->updateCount:I

    .line 252
    return-void
.end method

.method storeTo(Ljavax/naming/Reference;)V
    .locals 3
    .parameter

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Ljavax/naming/StringRefAddr;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    .line 258
    :cond_0
    return-void
.end method

.method validateStringValues(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getAllowableValues()[Ljava/lang/String;

    move-result-object v2

    .line 273
    if-nez p1, :cond_1

    .line 283
    :cond_0
    return-void

    .line 277
    :cond_1
    if-eqz v2, :cond_0

    array-length v0, v2

    if-eqz v0, :cond_0

    move v0, v1

    .line 281
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 282
    aget-object v3, v2, v0

    if-eqz v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    const-string v0, "The connection property \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v0, "\' only accepts values of the form: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    array-length v0, v2

    if-eqz v0, :cond_5

    .line 294
    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    aget-object v0, v2, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const/4 v0, 0x1

    :goto_1
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 299
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    aget-object v1, v2, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :cond_4
    const-string v0, " or \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_5
    const-string v0, ". The value \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v0, "\' is not in this set."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {v0, v1, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method
